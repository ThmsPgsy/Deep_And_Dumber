{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 5,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 100.0, 1660.0, 867.0 ],
        "openinpresentation": 1,
        "boxes": [
            {
                "box": {
                    "id": "obj-50",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 572.0, 440.0, 55.0, 22.0 ],
                    "text": "startloop"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 308.0, 438.0, 55.0, 22.0 ],
                    "text": "startloop"
                }
            },
            {
                "box": {
                    "comment": "bang end of sample X",
                    "id": "obj-13",
                    "index": 3,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 695.0, 821.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-142",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 749.0, 717.0, 90.0, 47.0 ],
                    "text": "detect end of sample played and Bang !"
                }
            },
            {
                "box": {
                    "id": "obj-143",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 695.0, 784.0, 26.0, 26.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-144",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "bang" ],
                    "patching_rect": [ 695.0, 755.0, 48.0, 20.0 ],
                    "text": "edge~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-145",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 695.0, 730.0, 46.0, 20.0 ],
                    "text": ">=~ 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-146",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 695.0, 705.0, 47.0, 20.0 ],
                    "text": "delta~"
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 475.0, 728.0, 29.5, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 442.0, 728.0, 29.5, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "obj-43",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 630.0, 673.0, 54.0, 20.0 ],
                    "text": "R * 0.7"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 566.0, 673.0, 44.0, 20.0 ],
                    "text": "L * 0.7"
                }
            },
            {
                "box": {
                    "id": "obj-40",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 362.75, 673.0, 54.0, 20.0 ],
                    "presentation_linecount": 2,
                    "text": "R * 0.6"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 300.75, 673.0, 44.0, 20.0 ],
                    "text": "L * 0.6"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 633.0, 638.0, 29.5, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 308.0, 640.0, 29.5, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 476.0, 830.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 140.0, 4.5, 21.0, 20.0 ],
                    "text": "R"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 443.0, 830.0, 20.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 110.0, 4.5, 21.0, 20.0 ],
                    "text": "L"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 478.0, 767.0, 12.0, 58.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 132.0, 4.5, 12.0, 58.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 446.0, 767.0, 12.0, 58.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 119.0, 4.5, 12.0, 58.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "signal" ],
                    "patching_rect": [ 572.0, 520.0, 142.0, 22.0 ],
                    "text": "groove~ buffB 2 @loop 1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "signal" ],
                    "patching_rect": [ 308.0, 520.0, 158.0, 22.0 ],
                    "text": "groove~ buffA 2 @loop 1"
                }
            },
            {
                "box": {
                    "id": "obj-115",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 573.0, 294.0, 32.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "color": [ 0.09411764705882353, 0.7411764705882353, 0.23921568627450981, 1.0 ],
                    "id": "obj-116",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 507.0, 294.0, 64.0, 22.0 ],
                    "text": "r freeze_B"
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1280.0, 213.0, 29.5, 22.0 ],
                    "text": "!- 1"
                }
            },
            {
                "box": {
                    "appearance": 1,
                    "id": "obj-109",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1280.0, 172.0, 25.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 223.0, 71.0, 25.0, 27.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_initial": [ 0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "freezeB",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Granulate",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.toggle[2]"
                }
            },
            {
                "box": {
                    "color": [ 0.09411764705882353, 0.7411764705882353, 0.23921568627450981, 1.0 ],
                    "id": "obj-111",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1280.0, 248.0, 66.0, 22.0 ],
                    "text": "s freeze_B"
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 987.5, 213.0, 29.5, 22.0 ],
                    "text": "!- 1"
                }
            },
            {
                "box": {
                    "appearance": 1,
                    "id": "obj-46",
                    "maxclass": "live.toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 987.5, 172.0, 25.0, 27.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 24.0, 71.0, 25.0, 27.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "off", "on" ],
                            "parameter_initial": [ 0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "freezeA",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Granulate",
                            "parameter_type": 2
                        }
                    },
                    "varname": "live.toggle[1]"
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 302.5, 298.0, 32.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "color": [ 0.09411764705882353, 0.7411764705882353, 0.23921568627450981, 1.0 ],
                    "id": "obj-93",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 236.0, 298.0, 64.0, 22.0 ],
                    "text": "r freeze_A"
                }
            },
            {
                "box": {
                    "color": [ 0.09411764705882353, 0.7411764705882353, 0.23921568627450981, 1.0 ],
                    "id": "obj-92",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 987.5, 248.0, 66.0, 22.0 ],
                    "text": "s freeze_A"
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1262.0, 144.0, 60.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 207.0, 100.0, 60.0, 20.0 ],
                    "text": "Freeze B"
                }
            },
            {
                "box": {
                    "id": "obj-81",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 968.5, 148.0, 67.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 4.0, 100.0, 58.0, 20.0 ],
                    "text": "Freeze A"
                }
            },
            {
                "box": {
                    "id": "obj-69",
                    "maxclass": "fpic",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "jit_matrix" ],
                    "patching_rect": [ 968.5, 15.0, 359.0, 127.0 ],
                    "pic": "Macintosh HD:/Users/jonathangrimbert/Documents/Deep_And_Dumber/Equal_Power_Fade.png"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1124.0, 222.0, 64.0, 22.0 ],
                    "text": "0.548611"
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 20.0,
                    "id": "obj-51",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1077.0, -55.0, 191.0, 29.0 ],
                    "text": "Equal Power Fade"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 377.5, 638.0, 29.5, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 572.0, 638.0, 29.5, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 432.5, 604.0, 68.0, 22.0 ],
                    "text": "0.651105"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 712.0, 604.0, 72.0, 22.0 ],
                    "text": "0.758987"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 659.0, 604.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 659.0, 565.0, 178.0, 22.0 ],
                    "text": "expr sin(0.5*3.1415926535*$f1)"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 393.5, 604.0, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 394.0, 565.0, 182.0, 22.0 ],
                    "text": "expr cos(0.5*3.1415926535*$f1)"
                }
            },
            {
                "box": {
                    "floatoutput": 1,
                    "id": "obj-34",
                    "knobshape": 5,
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1079.0, 173.0, 154.0, 32.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 61.0, 68.0, 154.0, 32.0 ],
                    "size": 1.0
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1106.0, 148.0, 100.0, 20.0 ],
                    "text": "XFADER (gfade)"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 18.0, 544.0, 156.0, 34.0 ],
                    "text": "delay ms - start play groove\n"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 449.0, 298.0, 35.0, 22.0 ],
                    "text": "clear"
                }
            },
            {
                "box": {
                    "comment": "path gen",
                    "id": "obj-2",
                    "index": 4,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 848.0, 820.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 679.0, 472.0, 72.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 173.0, 3.0, 71.0, 20.0 ],
                    "text": "BUFFER B"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 210.0, 471.0, 70.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 20.0, 3.0, 71.0, 20.0 ],
                    "text": "BUFFER A"
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 335.0, 119.0, 50.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "comment": "delay T_OSC",
                    "id": "obj-18",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 126.0, 36.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "OSC_Bang",
                    "id": "obj-16",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 316.0, 36.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "exterminate",
                    "id": "obj-15",
                    "index": 3,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 484.0, 39.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "Right",
                    "id": "obj-12",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 516.0, 820.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "comment": "Left",
                    "id": "obj-11",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 392.5, 820.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-155",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 654.0, 406.0, 48.0, 20.0 ],
                    "text": "set buffB"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.501961, 0.717647, 0.764706, 1.0 ],
                    "buffername": "buffB",
                    "gridcolor": [ 0.352941, 0.337255, 0.521569, 1.0 ],
                    "id": "obj-156",
                    "maxclass": "waveform~",
                    "numinlets": 5,
                    "numoutlets": 6,
                    "outlettype": [ "float", "float", "float", "float", "list", "" ],
                    "patching_rect": [ 654.0, 434.0, 110.0, 34.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 150.0, 25.0, 110.0, 34.0 ],
                    "selectioncolor": [ 0.313726, 0.498039, 0.807843, 0.0 ],
                    "setunit": 1,
                    "waveformcolor": [ 0.082353, 0.25098, 0.431373, 1.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-154",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 190.0, 406.0, 48.0, 20.0 ],
                    "text": "set buffA"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.501961, 0.717647, 0.764706, 1.0 ],
                    "buffername": "buffA",
                    "gridcolor": [ 0.352941, 0.337255, 0.521569, 1.0 ],
                    "id": "obj-153",
                    "maxclass": "waveform~",
                    "numinlets": 5,
                    "numoutlets": 6,
                    "outlettype": [ "float", "float", "float", "float", "list", "" ],
                    "patching_rect": [ 190.0, 432.0, 110.0, 34.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.0, 25.0, 110.0, 34.0 ],
                    "selectioncolor": [ 0.313726, 0.498039, 0.807843, 0.0 ],
                    "setunit": 1,
                    "waveformcolor": [ 0.082353, 0.25098, 0.431373, 1.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-119",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 49.0, 520.0, 83.0, 22.0 ],
                    "text": "1679.979161"
                }
            },
            {
                "box": {
                    "id": "obj-120",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 113.0, 486.0, 32.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 423.0, 438.0, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-123",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 484.0, 438.0, 27.0, 22.0 ],
                    "text": "0"
                }
            },
            {
                "box": {
                    "id": "obj-124",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 460.0, 15.0, 86.0, 20.0 ],
                    "text": "Exterminate !!!"
                }
            },
            {
                "box": {
                    "id": "obj-126",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 514.0, 438.0, 24.0, 22.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 10.0,
                    "id": "obj-127",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 514.0, 474.0, 27.0, 20.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-131",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "bang" ],
                    "patching_rect": [ 631.0, 372.0, 42.0, 22.0 ],
                    "text": "t b b b"
                }
            },
            {
                "box": {
                    "id": "obj-133",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "bang" ],
                    "patching_rect": [ 316.0, 372.0, 42.0, 22.0 ],
                    "text": "t b b b"
                }
            },
            {
                "box": {
                    "id": "obj-135",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 585.0, 255.0, 95.0, 22.0 ],
                    "text": "prepend replace"
                }
            },
            {
                "box": {
                    "id": "obj-136",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 585.0, 222.0, 148.0, 22.0 ],
                    "text": "sprintf symout %sgen.wav"
                }
            },
            {
                "box": {
                    "color": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-137",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 5,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 119.0, 1079.0, 603.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-11",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 177.0, 216.0, 30.0, 30.0 ],
                                    "varname": "display"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 144.0, 8.0, 78.0, 20.0 ],
                                    "text": "v.0.1 - optim"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 23.0, 40.0, 32.0, 22.0 ],
                                    "text": "path"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-5",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 216.0, 30.0, 30.0 ],
                                    "varname": "folder_path"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-4",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 23.0, 3.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-101",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "", "", "", "", "" ],
                                    "patching_rect": [ 71.0, 133.0, 206.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "legacyoutputorder": 1
                                    },
                                    "text": "regexp (.*)(/Users/.*) @substitute %2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-95",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 71.0, 99.0, 38.0, 22.0 ],
                                    "text": "zl.reg"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-106",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 23.0, 70.0, 67.0, 22.0 ],
                                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                                    "text": "thispatcher"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "order": 0,
                                    "source": [ "obj-101", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "order": 1,
                                    "source": [ "obj-101", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-95", 0 ],
                                    "source": [ "obj-106", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-106", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "source": [ "obj-95", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 585.0, 190.0, 85.0, 22.0 ],
                    "text": "p catch_path"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-138",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 573.0, 337.0, 77.0, 22.0 ],
                    "text": "buffer~ buffB"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-151",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 302.5, 337.0, 77.0, 22.0 ],
                    "text": "buffer~ buffA"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 316.0, 255.0, 95.0, 22.0 ],
                    "text": "prepend replace"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 316.0, 222.0, 148.0, 22.0 ],
                    "text": "sprintf symout %sgen.wav"
                }
            },
            {
                "box": {
                    "color": [ 1.0, 1.0, 1.0, 1.0 ],
                    "id": "obj-23",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 5,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 59.0, 119.0, 1079.0, 603.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-11",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 177.0, 216.0, 30.0, 30.0 ],
                                    "varname": "display"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 144.0, 8.0, 78.0, 20.0 ],
                                    "text": "v.0.1 - optim"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 23.0, 40.0, 32.0, 22.0 ],
                                    "text": "path"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-5",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 71.0, 216.0, 30.0, 30.0 ],
                                    "varname": "folder_path"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-4",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 23.0, 3.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-101",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "", "", "", "", "" ],
                                    "patching_rect": [ 71.0, 133.0, 206.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "legacyoutputorder": 1
                                    },
                                    "text": "regexp (.*)(/Users/.*) @substitute %2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-95",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 71.0, 99.0, 38.0, 22.0 ],
                                    "text": "zl.reg"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-106",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 23.0, 70.0, 67.0, 22.0 ],
                                    "save": [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
                                    "text": "thispatcher"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "order": 0,
                                    "source": [ "obj-101", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "order": 1,
                                    "source": [ "obj-101", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-95", 0 ],
                                    "source": [ "obj-106", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-106", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-101", 0 ],
                                    "source": [ "obj-95", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 316.0, 190.0, 85.0, 22.0 ],
                    "text": "p catch_path"
                }
            },
            {
                "box": {
                    "id": "obj-118",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "bang", "bang", "" ],
                    "patching_rect": [ 316.0, 150.0, 89.0, 22.0 ],
                    "text": "sel 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-117",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 387.0, 67.5, 96.0, 47.0 ],
                    "text": "swicth simple 0 1 0 1 a chaque bang "
                }
            },
            {
                "box": {
                    "id": "obj-110",
                    "maxclass": "newobj",
                    "numinlets": 5,
                    "numoutlets": 4,
                    "outlettype": [ "int", "", "", "int" ],
                    "patching_rect": [ 316.0, 80.0, 69.0, 22.0 ],
                    "text": "counter 0 1"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 402.0, 338.0, 150.0, 20.0 ],
                    "text": "systeme de double buffer"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "panel",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 554.0, 80.0, 130.0, 62.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 2.0, 3.0, 264.0, 61.0 ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-92", 0 ],
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-111", 0 ],
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "order": 1,
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 1 ],
                    "order": 0,
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-138", 0 ],
                    "source": [ "obj-115", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-115", 0 ],
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 0 ],
                    "midpoints": [ 360.5, 181.0, 594.5, 181.0 ],
                    "source": [ "obj-118", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-118", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-119", 1 ],
                    "order": 2,
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 1 ],
                    "midpoints": [ 122.5, 514.0, 387.0, 514.0 ],
                    "order": 1,
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 1 ],
                    "midpoints": [ 122.5, 514.0, 643.0, 514.0 ],
                    "order": 0,
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 0 ],
                    "source": [ "obj-121", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "midpoints": [ 493.5, 467.5, 523.5, 467.5 ],
                    "source": [ "obj-123", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-120", 0 ],
                    "midpoints": [ 523.5, 471.828125, 122.5, 471.828125 ],
                    "order": 1,
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "order": 0,
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 523.5, 507.0, 317.5, 507.0 ],
                    "order": 1,
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "midpoints": [ 523.5, 507.0, 581.5, 507.0 ],
                    "order": 0,
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "midpoints": [ 640.5, 395.79296875, 523.5, 395.79296875 ],
                    "source": [ "obj-131", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-155", 0 ],
                    "midpoints": [ 663.5, 402.5, 663.5, 402.5 ],
                    "source": [ "obj-131", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-131", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "midpoints": [ 325.5, 396.58984375, 523.5, 396.58984375 ],
                    "source": [ "obj-133", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-154", 0 ],
                    "midpoints": [ 348.5, 400.3359375, 199.5, 400.3359375 ],
                    "source": [ "obj-133", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-133", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-115", 1 ],
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 0 ],
                    "order": 1,
                    "source": [ "obj-136", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "midpoints": [ 594.5, 249.84375, 857.5, 249.84375 ],
                    "order": 0,
                    "source": [ "obj-136", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 0 ],
                    "source": [ "obj-137", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 0 ],
                    "source": [ "obj-138", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-143", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-143", 0 ],
                    "source": [ "obj-144", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 0 ],
                    "source": [ "obj-145", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-145", 0 ],
                    "source": [ "obj-146", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 0 ],
                    "midpoints": [ 493.5, 366.19140625, 493.5, 366.19140625 ],
                    "order": 0,
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 1,
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-133", 0 ],
                    "source": [ "obj-151", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-153", 0 ],
                    "source": [ "obj-154", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-156", 0 ],
                    "source": [ "obj-155", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 1 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-120", 1 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "midpoints": [ 317.5, 667.9765625, 451.5, 667.9765625 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.1491314173, 0.0, 1.0 ],
                    "destination": [ "obj-45", 1 ],
                    "midpoints": [ 581.5, 669.87109375, 462.0, 669.87109375 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.1491314173, 0.0, 1.0 ],
                    "destination": [ "obj-47", 1 ],
                    "midpoints": [ 642.5, 675.02734375, 495.0, 675.02734375 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "midpoints": [ 1088.5, 553.24609375, 668.5, 553.24609375 ],
                    "order": 1,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "midpoints": [ 1088.5, 553.64453125, 403.5, 553.64453125 ],
                    "order": 2,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 1 ],
                    "midpoints": [ 1088.5, 215.171875, 1178.5, 215.171875 ],
                    "order": 0,
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-138", 0 ],
                    "midpoints": [ 458.5, 330.46484375, 582.5, 330.46484375 ],
                    "order": 0,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-151", 0 ],
                    "midpoints": [ 458.5, 329.96484375, 312.0, 329.96484375 ],
                    "order": 1,
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "order": 0,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "midpoints": [ 451.5, 760.42578125, 402.0, 760.42578125 ],
                    "order": 1,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "source": [ "obj-46", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "midpoints": [ 484.5, 758.55859375, 525.5, 758.55859375 ],
                    "order": 0,
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "order": 1,
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 317.5, 498.11328125, 317.5, 498.11328125 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "source": [ "obj-5", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "midpoints": [ 387.0, 663.890625, 484.5, 663.890625 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 1 ],
                    "midpoints": [ 668.5, 632.0, 592.0, 632.0 ],
                    "order": 1,
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 1 ],
                    "midpoints": [ 668.5, 632.0, 653.0, 632.0 ],
                    "order": 0,
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 1 ],
                    "order": 0,
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "order": 1,
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 1 ],
                    "midpoints": [ 403.0, 632.0, 328.0, 632.0 ],
                    "order": 1,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 1 ],
                    "order": 0,
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 1 ],
                    "order": 0,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "order": 1,
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-146", 0 ],
                    "midpoints": [ 704.5, 623.0, 704.5, 623.0 ],
                    "source": [ "obj-6", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-151", 0 ],
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 0 ],
                    "source": [ "obj-93", 0 ]
                }
            }
        ],
        "oscreceiveudpport": 0
    }
}