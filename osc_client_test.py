"""Client OSC de test pour osc_server_SAO3.py.

Envoie un ordre de génération sur /test (127.0.0.1:9000) et attend le "bang"
que le serveur renvoie sur le port 9001 une fois gen.wav écrit.

Exemples :
    python osc_client_test.py --prompt "distorted bass guitar riff"
    python osc_client_test.py --model-type 2 --gen-type 1 --steps 8 --slices 4
    python osc_client_test.py --repeat 3 --interval 0.5      # test de la queue
    python osc_client_test.py --make-take 5                  # fabrique un take.wav
"""

import argparse
import os
import socket
import struct
import sys
import threading
import time

from pythonosc.udp_client import SimpleUDPClient

PATH = os.path.dirname(os.path.abspath(__file__))


# --- réception du "bang" -----------------------------------------------------
# Le serveur répond avec l'adresse OSC "127.0.0.1:9001" (sans "/" initial), que
# python-osc refuse de parser. On écoute donc en UDP brut et on décode nous-mêmes
# l'adresse : ça marche pour un retour OSC valide comme pour celui du serveur.

def decode_osc(dgram):
    """Renvoie (adresse, [args]) au mieux, sans exiger un "/" initial."""
    try:
        end = dgram.index(b"\x00")
    except ValueError:
        return repr(dgram), []
    address = dgram[:end].decode("utf-8", "replace")
    i = (end + 4) & ~0x03  # padding 4 octets

    args = []
    if i < len(dgram) and dgram[i:i + 1] == b",":
        end = dgram.index(b"\x00", i)
        tags = dgram[i + 1:end].decode("utf-8", "replace")
        i = (end + 4) & ~0x03
        for tag in tags:
            if tag == "i":
                args.append(struct.unpack_from(">i", dgram, i)[0]); i += 4
            elif tag == "f":
                args.append(struct.unpack_from(">f", dgram, i)[0]); i += 4
            elif tag == "s":
                end = dgram.index(b"\x00", i)
                args.append(dgram[i:end].decode("utf-8", "replace"))
                i = (end + 4) & ~0x03
            else:
                args.append("<%s ?>" % tag)
                break
    return address, args


class BangListener(threading.Thread):
    def __init__(self, ip, port):
        super().__init__(daemon=True)
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
        if hasattr(socket, "SO_REUSEPORT"):
            try:
                self.sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEPORT, 1)
            except OSError:
                pass
        self.sock.bind((ip, port))
        self.sock.settimeout(0.2)
        self.received = threading.Event()
        self.running = True

    def run(self):
        while self.running:
            try:
                dgram, sender = self.sock.recvfrom(65536)
            except socket.timeout:
                continue
            except OSError:
                break
            address, args = decode_osc(dgram)
            print("  <- retour de %s:%d : %s %s" % (sender[0], sender[1], address, args))
            self.received.set()

    def stop(self):
        self.running = False
        self.sock.close()


# --- utilitaires -------------------------------------------------------------

def wav_info(filepath):
    if not os.path.exists(filepath):
        return "absent"
    stamp = time.strftime("%H:%M:%S", time.localtime(os.path.getmtime(filepath)))
    try:
        import soundfile as sf
        info = sf.info(filepath)
        return "%.2f s @ %d Hz, %d ch, modifié à %s" % (
            info.duration, info.samplerate, info.channels, stamp)
    except Exception:
        return "%d octets, modifié à %s" % (os.path.getsize(filepath), stamp)


def make_take(seconds, samplerate=44100):
    """Fabrique un take.wav de test (accord + enveloppe) pour avoir une entrée valide."""
    import numpy as np
    import soundfile as sf

    t = np.linspace(0, seconds, int(seconds * samplerate), endpoint=False)
    audio = sum(np.sin(2 * np.pi * f * t) for f in (110.0, 164.81, 220.0)) / 3.0
    env = np.clip(np.sin(2 * np.pi * 2.0 * t) * 0.5 + 0.6, 0, 1)
    audio = (audio * env * 0.9).astype("float32")
    target = os.path.join(PATH, "take.wav")
    sf.write(target, audio, samplerate, "PCM_24")
    print("take.wav écrit : %s" % wav_info(target))


# --- main --------------------------------------------------------------------

def main():
    p = argparse.ArgumentParser(description=__doc__,
                                formatter_class=argparse.RawDescriptionHelpFormatter)
    p.add_argument("--ip", default="127.0.0.1", help="IP du serveur (défaut 127.0.0.1)")
    p.add_argument("--port", type=int, default=9000, help="port du serveur (défaut 9000)")
    p.add_argument("--osc-address", default="/test", help="adresse OSC (défaut /test)")
    p.add_argument("--listen-ip", default="127.0.0.1")
    p.add_argument("--listen-port", type=int, default=9001,
                   help="port d'écoute du bang (défaut 9001)")

    # les 9 arguments attendus par stable_gen(), dans l'ordre
    p.add_argument("--scale", type=float, default=1.0, help="arg1 cfg_scale")
    p.add_argument("--init-noise", type=float, default=0.5,
                   help="arg2 init_noise_level (model 0) / ratio de masque (models 1 et 2)")
    p.add_argument("--seed", type=int, default=-1, help="arg3 seed, <=0 = aléatoire")
    p.add_argument("--steps", type=int, default=8, help="arg4 nombre de pas de diffusion")
    p.add_argument("--prompt", default="a punchy techno drum loop", help="arg5 prompt texte")
    p.add_argument("--cumulate", type=float, default=0.0,
                   help="arg6 mélange avec gen.wav précédent, >0.1 pour activer")
    p.add_argument("--slices", type=int, default=4, help="arg7 n_slices du masque d'inpaint")
    p.add_argument("--model-type", type=int, default=0, choices=[0, 1, 2],
                   help="arg8 0=open-small, 1=SAO3 sfx, 2=SAO3 music")
    p.add_argument("--gen-type", type=int, default=0, choices=[0, 1],
                   help="arg9 0=Instrument, 1=Music (préfixe du prompt)")

    p.add_argument("--repeat", type=int, default=1, help="nombre d'envois (défaut 1)")
    p.add_argument("--interval", type=float, default=0.0,
                   help="délai entre deux envois, sans attendre le bang (test de la queue)")
    p.add_argument("--timeout", type=float, default=300.0,
                   help="attente max du bang en secondes (défaut 300)")
    p.add_argument("--no-wait", action="store_true", help="ne pas attendre de retour")
    p.add_argument("--make-take", type=float, metavar="SECONDES",
                   help="génère un take.wav de test de cette durée, puis quitte")
    args = p.parse_args()

    if args.make_take:
        make_take(args.make_take)
        return 0

    take = os.path.join(PATH, "take.wav")
    if not os.path.exists(take):
        print("take.wav introuvable dans %s — le serveur en a besoin." % PATH)
        print("Lance : python osc_client_test.py --make-take 5")
        return 1
    print("take.wav : %s" % wav_info(take))

    gen = os.path.join(PATH, "gen.wav")
    gen_before = os.path.getmtime(gen) if os.path.exists(gen) else 0
    print("gen.wav  : %s" % wav_info(gen))

    listener = None
    if not args.no_wait:
        try:
            listener = BangListener(args.listen_ip, args.listen_port)
            listener.start()
        except OSError as e:
            print("Écoute impossible sur %s:%d (%s) — Max l'occupe peut-être. "
                  "Envoi sans attente de retour." % (args.listen_ip, args.listen_port, e))

    payload = [
        float(args.scale),
        float(args.init_noise),
        int(args.seed),
        int(args.steps),
        str(args.prompt),
        float(args.cumulate),
        int(args.slices),
        int(args.model_type),
        int(args.gen_type),
    ]

    client = SimpleUDPClient(args.ip, args.port)
    print("\n-> %s:%d %s" % (args.ip, args.port, args.osc_address))
    for name, value in zip(["scale", "init_noise", "seed", "n_step", "prompt",
                            "cumulate", "n_slices", "model_type", "gen_type"], payload):
        print("   %-11s %r" % (name, value))

    start = time.time()
    for i in range(args.repeat):
        client.send_message(args.osc_address, payload)
        print("envoi %d/%d à t+%.2f s" % (i + 1, args.repeat, time.time() - start))
        if i < args.repeat - 1 and args.interval:
            time.sleep(args.interval)

    if listener is None:
        return 0

    print("\nattente du bang sur %s:%d (timeout %.0f s)…"
          % (args.listen_ip, args.listen_port, args.timeout))
    got = listener.received.wait(args.timeout)
    elapsed = time.time() - start
    listener.stop()

    if not got:
        print("aucun retour après %.1f s. Vérifie la console du serveur "
              "(le chargement des modèles peut être long, et une exception dans "
              "gen_worker() n'envoie pas de bang)." % elapsed)
        return 1

    print("bang reçu après %.2f s" % elapsed)
    print("gen.wav  : %s" % wav_info(gen))
    if os.path.exists(gen) and os.path.getmtime(gen) <= gen_before:
        print("attention : gen.wav n'a pas été réécrit.")
    return 0


if __name__ == "__main__":
    try:
        sys.exit(main())
    except KeyboardInterrupt:
        print("\ninterrompu")
        sys.exit(130)
