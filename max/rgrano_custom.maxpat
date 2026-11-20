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
        "rect": [ 59.0, 119.0, 1635.0, 780.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-55",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 166.0, 41.0, 59.0, 33.0 ],
                    "text": "linear playback "
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 115.0, 41.0, 56.0, 33.0 ],
                    "text": "(int) nb of voices"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 240.0, 41.0, 44.0, 33.0 ],
                    "text": "grain on/off"
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 393.0, 77.0, 46.0, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 54.0, 29.0, 46.0, 20.0 ],
                    "text": "refresh"
                }
            },
            {
                "box": {
                    "id": "obj-148",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 17.0, 158.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-144",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 17.0, 187.0, 69.0, 22.0 ],
                    "saved_object_attributes": {
                        "embed": 0,
                        "precision": 6
                    },
                    "text": "coll speeds"
                }
            },
            {
                "box": {
                    "id": "obj-134",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 17.0, 101.0, 41.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 105.0, 1.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "0.1", "0.2", "0.25", "0.5", "1.", "2.", "3.", "4.", "6.", "8.", "12.", "16." ],
                            "parameter_initial": [ 0.1 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "live.dial[4]",
                            "parameter_mmax": 11,
                            "parameter_modmode": 0,
                            "parameter_shortname": "speed",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.dial[3]"
                }
            },
            {
                "box": {
                    "id": "obj-178",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1106.0, 175.0, 29.5, 22.0 ],
                    "text": "- 1"
                }
            },
            {
                "box": {
                    "id": "obj-177",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1046.0, 145.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-163",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1094.0, 231.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "cantchange": 1,
                    "id": "obj-162",
                    "maxclass": "number",
                    "maximum": 2,
                    "minimum": 2,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1047.0, 179.0, 30.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-156",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 1094.0, 207.0, 31.0, 22.0 ],
                    "text": "pow"
                }
            },
            {
                "box": {
                    "id": "obj-149",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 714.0, 334.0, 41.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 153.0, 1.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "step[1]",
                            "parameter_modmode": 3,
                            "parameter_shortname": "step",
                            "parameter_type": 0,
                            "parameter_unitstyle": 0
                        }
                    },
                    "varname": "live.dial[2]"
                }
            },
            {
                "box": {
                    "id": "obj-120",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "float" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1073.0, 91.0, 41.0, 48.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 200.0, 1.0, 41.0, 48.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [ "1", "1", "2", "4", "8", "16", "32", "64", "128", "256" ],
                            "parameter_initial": [ 1 ],
                            "parameter_longname": "div[1]",
                            "parameter_mmax": 9,
                            "parameter_modmode": 0,
                            "parameter_shortname": "div",
                            "parameter_type": 2,
                            "parameter_unitstyle": 9
                        }
                    },
                    "varname": "live.dial"
                }
            },
            {
                "box": {
                    "id": "obj-139",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 880.0, 533.0, 72.0, 22.0 ],
                    "text": "%"
                }
            },
            {
                "box": {
                    "id": "obj-137",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 749.0, 533.0, 102.0, 22.0 ],
                    "text": "%"
                }
            },
            {
                "box": {
                    "id": "obj-117",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 880.0, 500.0, 29.5, 22.0 ],
                    "text": "*"
                }
            },
            {
                "box": {
                    "id": "obj-116",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 749.0, 506.0, 29.5, 22.0 ],
                    "text": "*"
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "number",
                    "maximum": 512,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 714.0, 400.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1100.0, 363.0, 29.5, 22.0 ],
                    "text": "64"
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 151.0, 109.0, 32.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 17.0, 241.0, 29.5, 22.0 ],
                    "text": "!/ 1."
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "number",
                    "maximum": 512,
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1106.0, 145.0, 29.5, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-98",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1153.0, 325.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1182.0, 157.0, 29.5, 22.0 ],
                    "text": "*"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 1153.0, 295.0, 29.5, 22.0 ],
                    "text": "!/"
                }
            },
            {
                "box": {
                    "comment": "",
                    "id": "obj-3",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1132.0, 57.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 685.0, 275.0, 39.0, 22.0 ],
                    "text": "$1 $1"
                }
            },
            {
                "box": {
                    "id": "obj-91",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 301.0, 356.0, 33.5, 20.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 19.0, 29.0, 34.0, 20.0 ],
                    "text": "loop"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 228.0, 324.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 23.0, 4.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-80",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1327.0, 294.0, 48.0, 24.0 ],
                    "text": "$1 $1"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "kslider",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1351.0, 231.0, 280.0, 45.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 50.0, 336.0, 53.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 458.0, 193.0, 95.0, 22.0 ],
                    "text": "prepend replace"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 443.0, 75.0, 24.0, 24.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 63.0, 4.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "comment": "path of file to load",
                    "id": "obj-26",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 478.0, 75.0, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 458.0, 159.0, 32.0, 22.0 ],
                    "text": "gate"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-25",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1317.0, 385.0, 189.0, 69.0 ],
                    "text": "To define a range of transpositions, use the rslider. The center of the range is displayed on the keyboard."
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-7",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1391.0, 312.0, 125.0, 38.0 ],
                    "text": "averages the range to find center note"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 895.0, 324.0, 81.0, 22.0 ],
                    "text": "select range"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-77",
                    "linecount": 6,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1351.0, 77.0, 245.0, 100.0 ],
                    "text": "For transposition, you can use the \"ribbon controller\" or a keybord to select a single transpostion value. (To make the values compatible with a MIDI pitch wheel, 64 (D#) is used to indicate zero-transposition."
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-142",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1286.0, 664.0, 248.0, 53.0 ],
                    "text": "Use size message to set buffer~ length.  Use this outlet to name record~, record a sound, then granulate."
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-141",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 714.0, 656.0, 569.0, 69.0 ],
                    "text": "Using the argument \"#0\" is a good way to ensure unique send-receive names within an instance of an abstraction,  and it even works when there is an abstraction within an abstraction (as in the poly~ within this rgrano). In the poly~, the first arugment (after \"args\") is #0. Inside poly~, in  rgrain.maxpat, #1 is replaced by the number generated by #0 in this top-level patch."
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 10.0,
                    "id": "obj-106",
                    "linecount": 13,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 559.0, 517.0, 93.0, 162.0 ],
                    "text": "Location range is displayed and controlled by a named and transparent rslider. Underneath the rslider (in presentation mode), a waveform~ object displays the waveform of the sample."
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-90",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 716.0, 730.0, 565.0, 22.0 ],
                    "text": "These are the values that are sent to the poly~. The #0- keeps them local, even inside the poly~."
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-67",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 701.0, 91.0, 230.0, 69.0 ],
                    "text": "Location within the sample is given as a value between 0.0 and 1.0, so you can load samples of various lengths without interrupting the workflow."
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 11.0,
                    "id": "obj-56",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 260.0, 3.0, 389.66666666666663, 46.0 ],
                    "text": "Replacing the sample sets the buffer~ to the sample's length, displays the sample's name, loads the waveform of the sample into the waveform~ object, and sends the sample's length throughout the patcher."
                }
            },
            {
                "box": {
                    "fontface": 1,
                    "fontsize": 14.0,
                    "id": "obj-140",
                    "maxclass": "tab",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 249.0, 396.0, 64.0, 40.0 ],
                    "tabs": [ "off", "on" ],
                    "varname": "-grains-on-off"
                }
            },
            {
                "box": {
                    "color": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-173",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 685.0, 177.0, 49.0, 23.0 ],
                    "text": "* 1000."
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-169",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "int", "int" ],
                    "patching_rect": [ 1232.0, 411.0, 53.0, 24.0 ],
                    "text": "unpack"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-175",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1565.0, 562.0, 86.0, 24.0 ],
                    "text": "prepend size"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-174",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 1441.0, 519.0, 90.0, 24.0 ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-168",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 1441.0, 490.0, 198.0, 24.0 ],
                    "text": "route size bang"
                }
            },
            {
                "box": {
                    "color": [ 0.6862745098039216, 0.43529411764705883, 0.043137254901960784, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-87",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1406.0, 562.0, 151.0, 24.0 ],
                    "text": "s #0-buffer-length"
                }
            },
            {
                "box": {
                    "color": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-82",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1530.0, 615.0, 162.0, 24.0 ],
                    "text": "loadmess #0-sample"
                }
            },
            {
                "box": {
                    "comment": "buffer~ name",
                    "id": "obj-81",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1530.0, 641.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "comment": "\"size <float>\" set buffer~ size",
                    "id": "obj-75",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1614.0, 56.0, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 14.249197,
                    "id": "obj-72",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 266.0, 353.0, 29.0, 26.0 ],
                    "text": "1"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-164",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
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
                        "rect": [ 134.0, 134.0, 397.0, 157.0 ],
                        "default_fontsize": 10.0,
                        "default_fontname": "Lato",
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-9",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 8.69342, 12.0, 376.0, 53.0 ],
                                    "text": "Since we are not using  waveform~'s selection feature, we make its selection invisible by setting its  selection to the range to be from  0 to 0"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 8.69342, 110.0, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 8.69342, 72.0, 115.0, 24.0 ],
                                    "text": "loadmess 0 -1 0 0"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-31", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 618.0, 396.0, 88.0, 24.0 ],
                    "saved_object_attributes": {
                        "fontname": "Lato",
                        "fontsize": 10.0
                    },
                    "text": "p no-selector"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1317.0, 355.0, 103.0, 24.0 ],
                    "text": "loadmess 64 64"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-88",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 969.0, 298.0, 118.0, 24.0 ],
                    "text": "loadmess 100 150"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 792.0, 252.0, 110.0, 23.0 ],
                    "text": "loadmess 250 750"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "tab",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 166.0, 136.0, 63.0, 42.0 ],
                    "tabs": [ "play", "stop", "resume" ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 10.0,
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 196.0, 281.0, 29.5, 20.0 ],
                    "text": "1."
                }
            },
            {
                "box": {
                    "color": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-83",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 864.0, 355.0, 50.0, 23.0 ],
                    "text": "* 0.001"
                }
            },
            {
                "box": {
                    "color": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-84",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 774.0, 355.0, 50.0, 23.0 ],
                    "text": "* 0.001"
                }
            },
            {
                "box": {
                    "contdata": 1,
                    "id": "obj-33",
                    "maxclass": "multislider",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 0,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 685.0, 236.0, 96.0, 20.0 ],
                    "setminmax": [ 0.0, 1000.0 ],
                    "settype": 0
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 82.0, 46.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-172",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 531.0, 362.0, 43.0, 23.0 ],
                    "text": "t s b"
                }
            },
            {
                "box": {
                    "color": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-171",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 881.0, 399.0, 50.0, 23.0 ],
                    "text": "bondo"
                }
            },
            {
                "box": {
                    "color": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-170",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 783.0, 404.0, 50.0, 23.0 ],
                    "text": "bondo"
                }
            },
            {
                "box": {
                    "color": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-130",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 880.0, 564.0, 136.0, 24.0 ],
                    "text": "s #0-hi-location"
                }
            },
            {
                "box": {
                    "color": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-131",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 749.0, 564.0, 136.0, 24.0 ],
                    "text": "s #0-lo-location"
                }
            },
            {
                "box": {
                    "color": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-159",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 881.0, 435.0, 50.0, 23.0 ],
                    "text": "* 1."
                }
            },
            {
                "box": {
                    "color": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-158",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 783.0, 435.0, 50.0, 23.0 ],
                    "text": "* 1."
                }
            },
            {
                "box": {
                    "color": [ 0.6862745098039216, 0.43529411764705883, 0.043137254901960784, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-157",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 933.0, 252.0, 139.0, 23.0 ],
                    "text": "r #0-buffer-length"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 783.0, 607.0, 83.0, 24.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 697.0, 607.0, 83.0, 24.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
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
                        "rect": [ 543.0, 403.0, 272.0, 201.0 ],
                        "default_fontsize": 10.0,
                        "default_fontname": "Lato",
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 54.0, 104.0, 80.0, 21.0 ],
                                    "text": "prepend set"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 54.0, 74.0, 155.0, 21.0 ],
                                    "text": "expr int( ($i1 + $i2) * 0.5)"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-2",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 53.0, 134.0, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 54.0, 37.0, 25.0, 25.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1317.0, 323.0, 77.0, 24.0 ],
                    "saved_object_attributes": {
                        "fontname": "Lato",
                        "fontsize": 10.0
                    },
                    "text": "p mean-set"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-165",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1376.0, 607.0, 83.0, 24.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-166",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1290.0, 607.0, 83.0, 24.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-150",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1203.0, 607.0, 83.0, 24.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-151",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1117.0, 607.0, 83.0, 24.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 10.0,
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 97.0, 477.0, 22.0, 20.0 ],
                    "text": "t b"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 406.0, 295.0, 64.0, 23.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1034.0, 607.0, 83.0, 24.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 868.0, 607.0, 83.0, 24.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 128.0, 565.0, 70.0, 23.0 ],
                    "text": "mousefilter"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-15",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 331.0, 420.0, 86.0, 24.0 ],
                    "text": "loadmess 20"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-16",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 128.0, 598.0, 63.0, 23.0 ],
                    "text": "voices $1"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 128.0, 520.0, 21.0, 23.0 ],
                    "text": "t i"
                }
            },
            {
                "box": {
                    "comment": "(int) number of voices",
                    "id": "obj-18",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 132.0, 77.0, 21.0, 21.0 ]
                }
            },
            {
                "box": {
                    "comment": "(0. - 1.) scrub location",
                    "id": "obj-32",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 684.0, 61.0, 22.0, 22.0 ]
                }
            },
            {
                "box": {
                    "comment": "grains on/off",
                    "id": "obj-34",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 470.0, 672.0, 23.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 10.0,
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 7,
                    "outlettype": [ "", "", "", "", "", "", "" ],
                    "patching_rect": [ 151.0, 194.0, 251.5, 20.0 ],
                    "text": "route stop resume int float bang play"
                }
            },
            {
                "box": {
                    "comment": "(bang, float, stop) linear playback (time stretching)",
                    "id": "obj-36",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 166.0, 77.0, 21.0, 21.0 ]
                }
            },
            {
                "box": {
                    "comment": "hi-trans",
                    "id": "obj-38",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1376.0, 638.0, 20.0, 20.0 ]
                }
            },
            {
                "box": {
                    "comment": "hi-trans",
                    "id": "obj-39",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1327.0, 57.0, 22.0, 22.0 ]
                }
            },
            {
                "box": {
                    "comment": "hi-pan",
                    "id": "obj-40",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1203.0, 638.0, 23.0, 23.0 ]
                }
            },
            {
                "box": {
                    "comment": "hi-pan",
                    "id": "obj-41",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1186.0, 60.0, 21.0, 21.0 ]
                }
            },
            {
                "box": {
                    "comment": "hi-dur",
                    "id": "obj-42",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1034.0, 639.0, 21.0, 21.0 ]
                }
            },
            {
                "box": {
                    "comment": "hi-dur",
                    "id": "obj-43",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1029.0, 60.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "comment": "hi-range",
                    "id": "obj-44",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 783.0, 638.0, 21.0, 21.0 ]
                }
            },
            {
                "box": {
                    "comment": "hi-range",
                    "id": "obj-45",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 871.0, 60.0, 22.0, 22.0 ]
                }
            },
            {
                "box": {
                    "comment": "lo-trans",
                    "id": "obj-46",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1290.0, 638.0, 20.0, 20.0 ]
                }
            },
            {
                "box": {
                    "comment": "lo-trans",
                    "id": "obj-47",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1213.0, 61.0, 22.0, 22.0 ]
                }
            },
            {
                "box": {
                    "comment": "lo-pan",
                    "id": "obj-48",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1117.0, 638.0, 23.0, 23.0 ]
                }
            },
            {
                "box": {
                    "comment": "lo-pan",
                    "id": "obj-49",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1094.0, 60.0, 23.0, 23.0 ]
                }
            },
            {
                "box": {
                    "comment": "lo-dur",
                    "id": "obj-50",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 868.0, 638.0, 21.0, 21.0 ]
                }
            },
            {
                "box": {
                    "comment": "lo-dur",
                    "id": "obj-51",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 954.0, 61.0, 22.0, 22.0 ]
                }
            },
            {
                "box": {
                    "comment": "lo-range",
                    "id": "obj-52",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 697.0, 638.0, 21.0, 21.0 ]
                }
            },
            {
                "box": {
                    "comment": "lo-range",
                    "id": "obj-53",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 794.0, 61.0, 22.0, 22.0 ]
                }
            },
            {
                "box": {
                    "comment": "grains on/off",
                    "id": "obj-54",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 249.0, 77.0, 21.0, 21.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-57",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 204.0, 519.0, 28.0, 24.0 ],
                    "text": "60"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-59",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 204.0, 602.0, 96.0, 23.0 ],
                    "text": "midinote $1 $2"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-60",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 204.0, 575.0, 103.0, 23.0 ],
                    "text": "pack"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-61",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 204.0, 550.0, 103.0, 23.0 ],
                    "text": "makenote 80 400"
                }
            },
            {
                "box": {
                    "color": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 204.0, 637.0, 231.0, 24.0 ],
                    "text": "poly~ rgrain.maxpat 16 args #0",
                    "varname": "poly~_AA"
                }
            },
            {
                "box": {
                    "comment": "grainoutR",
                    "id": "obj-63",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 416.0, 672.0, 23.0, 23.0 ]
                }
            },
            {
                "box": {
                    "comment": "grainoutL",
                    "id": "obj-64",
                    "index": 0,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 203.0, 672.0, 23.0, 23.0 ]
                }
            },
            {
                "box": {
                    "color": [ 0.6862745098039216, 0.43529411764705883, 0.043137254901960784, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-65",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 406.0, 362.0, 140.0, 23.0 ],
                    "text": "s #0-buffer-length"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 10,
                    "outlettype": [ "float", "list", "float", "float", "float", "float", "float", "", "int", "" ],
                    "patching_rect": [ 406.0, 328.0, 174.0, 23.0 ],
                    "text": "info~ #0-sample"
                }
            },
            {
                "box": {
                    "color": [ 0.827451, 0.827451, 0.827451, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-69",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
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
                        "rect": [ 34.0, 34.0, 496.0, 472.0 ],
                        "bglocked": 1,
                        "default_fontsize": 10.0,
                        "default_fontname": "Lato",
                        "boxes": [
                            {
                                "box": {
                                    "color": [ 0.8, 0.8, 0.8, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-67",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 33.5, 21.0, 68.0, 23.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.8, 0.8, 0.8, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-68",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 87.5, 368.0, 205.0, 23.0 ],
                                    "text": "peek~ #0-window"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.8, 0.8, 0.8, 1.0 ],
                                    "fontface": 0,
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-70",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 87.5, 397.0, 213.0, 23.0 ],
                                    "text": "buffer~ #0-window @samps 512"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 204.0, 174.0, 57.0, 23.0 ],
                                    "text": "/ 511."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 204.0, 214.0, 38.0, 23.0 ],
                                    "text": "* 2."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 290.0, 174.0, 32.0, 23.0 ],
                                    "text": "t 1."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 204.0, 129.0, 105.0, 23.0 ],
                                    "text": "split 384 512"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "int" ],
                                    "patching_rect": [ 136.0, 93.0, 87.0, 23.0 ],
                                    "text": "split 0 128"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 136.0, 214.0, 38.0, 23.0 ],
                                    "text": "* 2."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-10",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 339.0, 301.0, 119.0, 21.0 ],
                                    "text": "Sqrt for two Overlap"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 136.0, 258.0, 262.0, 23.0 ],
                                    "text": "expr 0.5 * (1 + cos((3.14159 + 3.14159*2* $f1)))"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 228.0, 301.0, 113.0, 23.0 ],
                                    "text": "expr sqrt($f1)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-13",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 404.0, 258.0, 74.0, 21.0 ],
                                    "text": "hanning"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 136.0, 174.0, 57.0, 23.0 ],
                                    "text": "/ 511."
                                }
                            },
                            {
                                "box": {
                                    "fontface": 0,
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "bang", "int" ],
                                    "patching_rect": [ 33.5, 49.0, 73.0, 23.0 ],
                                    "text": "uzi 512 0"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 87.5, 335.0, 67.5, 23.0 ],
                                    "text": "pack 0 0."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 1 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 1 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "order": 1,
                                    "source": [ "obj-17", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "order": 0,
                                    "source": [ "obj-17", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-68", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 1 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-6", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-7", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 327.0, 554.0, 145.0, 24.0 ],
                    "saved_object_attributes": {
                        "fontname": "Lato",
                        "fontsize": 10.0
                    },
                    "text": "p make-grain-envelope"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "number",
                    "minimum": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 314.0, 457.0, 42.0, 22.0 ],
                    "triscale": 0.9,
                    "varname": "-grains-time"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-73",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 218.0, 487.0, 66.10600299999999, 24.0 ],
                    "text": "metro 20"
                }
            },
            {
                "box": {
                    "color": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-74",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "float", "bang" ],
                    "patching_rect": [ 458.0, 252.0, 151.0, 23.0 ],
                    "text": "buffer~ #0-sample #1"
                }
            },
            {
                "box": {
                    "comment": "(bang) play one grain",
                    "id": "obj-78",
                    "index": 0,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 99.0, 77.0, 21.0, 21.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-79",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 393.0, 697.0, 68.0, 38.0 ],
                    "text": "(signal) R audio out"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-85",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 516.0, 427.0, 141.0, 23.0 ],
                    "text": "name #0-sample 1"
                }
            },
            {
                "box": {
                    "id": "obj-93",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1234.0, 118.0, 18.0, 18.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "obj-94",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1234.0, 95.0, 100.0, 21.0 ],
                    "text": "no pitch change"
                }
            },
            {
                "box": {
                    "id": "obj-95",
                    "knobshape": 5,
                    "maxclass": "slider",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "orientation": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1264.0, 184.0, 252.0, 16.0 ],
                    "size": 127.0,
                    "thickness": 50.0
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 9.160198,
                    "id": "obj-96",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 17.0, 71.0, 34.0, 19.0 ],
                    "text": "set 1."
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 10.0,
                    "id": "obj-97",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 17.0, 41.0, 50.0, 20.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 317.0, 244.0, 20.0, 20.0 ]
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-102",
                    "maxclass": "flonum",
                    "minimum": 0.0,
                    "mousefilter": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 17.0, 215.0, 48.0, 22.0 ],
                    "triscale": 0.9
                }
            },
            {
                "box": {
                    "color": [ 0.16470588235294117, 0.054901960784313725, 0.7019607843137254, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 12.0,
                    "id": "obj-103",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 701.0, 207.0, 144.0, 23.0 ],
                    "text": "r #0-scrub-location"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 10.0,
                    "id": "obj-104",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
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
                        "rect": [ 896.0, 329.0, 986.0, 637.0 ],
                        "bglocked": 1,
                        "default_fontsize": 10.0,
                        "default_fontname": "Lato",
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-31",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 549.0, 497.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 549.0, 473.0, 29.5, 20.0 ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-29",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 549.0, 76.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "(float) playback from begiining",
                                    "id": "obj-27",
                                    "index": 4,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 549.0, 22.5, 23.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-20",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 19.0, 529.0, 567.0, 38.0 ],
                                    "text": "This section of the patch generates an automatic scan through the sample. By choosing a speed  greater than 1, then sample playback can be sped up without necessarily changing the pitch."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-18",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 394.5, 320.5, 111.0, 53.0 ],
                                    "text": "time to play full sample (0-1000) at chosen speed."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-14",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 351.0, 433.0, 156.0, 22.0 ],
                                    "text": "start at 0 (beg of sample)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-1",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 372.5, 190.0, 133.0, 53.0 ],
                                    "text": "Here is the actual length of the sample in milliseconds:"
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.6862745098039216, 0.43529411764705883, 0.043137254901960784, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-65",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 372.5, 247.0, 129.5, 24.0 ],
                                    "text": "r #0-buffer-length"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-26",
                                    "linecount": 5,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 376.0, 84.0, 106.0, 84.0 ],
                                    "text": "1000 is used by rslider and pattr to  represent  the total  length of a sample."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "int" ],
                                    "patching_rect": [ 272.0, 46.0, 244.0, 24.0 ],
                                    "text": "t f 0"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 200.0, 266.0, 30.0, 24.0 ],
                                    "text": "f"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 140.0, 231.0, 79.0, 24.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 200.0, 295.0, 41.0, 24.0 ],
                                    "text": "- 0."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 304.0, 366.0, 75.0, 24.0 ],
                                    "text": "t l b"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "" ],
                                    "patching_rect": [ 359.5, 396.0, 54.0, 24.0 ],
                                    "text": "timer"
                                }
                            },
                            {
                                "box": {
                                    "comment": "(bang, resume) restarts playback",
                                    "id": "obj-8",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 140.0, 12.0, 26.0, 26.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-9",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 170.0, 12.0, 64.0, 69.0 ],
                                    "text": "(bang, resume) restarts playback"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 86.0, 438.0, 44.0, 24.0 ],
                                    "text": "f"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 86.0, 61.0, 45.0, 24.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "comment": "(bang, stop) stop playback",
                                    "id": "obj-12",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 86.0, 12.5, 25.0, 25.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 272.0, 76.0, 44.0, 24.0 ],
                                    "text": "!/ 1."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 281.0, 337.0, 111.0, 24.0 ],
                                    "text": "pack 1000 1000."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 281.0, 114.0, 71.0, 24.0 ],
                                    "text": "t 1000. f"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 333.0, 278.0, 59.0, 24.0 ],
                                    "text": "* 1."
                                }
                            },
                            {
                                "box": {
                                    "color": [ 0.16470588235294117, 0.054901960784313725, 0.7019607843137254, 1.0 ],
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 272.0, 477.0, 201.0, 24.0 ],
                                    "text": "s #0-scrub-location"
                                }
                            },
                            {
                                "box": {
                                    "comment": "(float) playback from begiining",
                                    "id": "obj-21",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "float" ],
                                    "patching_rect": [ 272.0, 11.0, 27.0, 27.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "patching_rect": [ 272.0, 438.0, 61.0, 24.0 ],
                                    "text": "line 0 5"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-23",
                                    "linecount": 2,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1.0, 15.0, 93.0, 38.0 ],
                                    "text": "(bang, stop) stop playback"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 13.0,
                                    "id": "obj-24",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 303.5, 13.5, 202.0, 22.0 ],
                                    "text": "(float) playback from begiining"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 1 ],
                                    "midpoints": [ 121.5, 393.328125, 404.0, 393.328125 ],
                                    "source": [ "obj-11", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-16", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 1 ],
                                    "order": 0,
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 1 ],
                                    "order": 1,
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "midpoints": [ 506.5, 430.453125, 281.5, 430.453125 ],
                                    "source": [ "obj-2", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 1 ],
                                    "order": 1,
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-19", 0 ],
                                    "order": 0,
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 1 ],
                                    "midpoints": [ 323.5, 465.57421875, 569.0, 465.57421875 ],
                                    "source": [ "obj-22", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-29", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-30", 0 ],
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
                                    "source": [ "obj-30", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "midpoints": [ 149.5, 332.7265625, 290.5, 332.7265625 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "source": [ "obj-4", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 1 ],
                                    "midpoints": [ 209.5, 327.0, 382.5, 327.0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-6", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 1 ],
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 1 ],
                                    "midpoints": [ 369.0, 425.91796875, 250.54296875, 425.91796875, 250.54296875, 285.0, 231.5, 285.0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 143.0, 356.0, 94.0, 20.0 ],
                    "saved_object_attributes": {
                        "fontname": "Lato",
                        "fontsize": 10.0
                    },
                    "text": "p linear-playback"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-107",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1248.0, 263.0, 48.0, 24.0 ],
                    "text": "$1 $1"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-110",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1234.0, 143.0, 48.0, 24.0 ],
                    "text": "64 64"
                }
            },
            {
                "box": {
                    "id": "obj-111",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1241.0, 57.0, 62.0, 20.0 ],
                    "text": "transpo"
                }
            },
            {
                "box": {
                    "color": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-112",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1232.0, 475.0, 119.0, 24.0 ],
                    "text": "s #0-lo-trans"
                }
            },
            {
                "box": {
                    "color": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-113",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1262.0, 505.0, 119.0, 24.0 ],
                    "text": "s #0-hi-trans"
                }
            },
            {
                "box": {
                    "id": "obj-114",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1229.0, 446.0, 38.0, 22.0 ],
                    "triangle": 0,
                    "triscale": 0.9
                }
            },
            {
                "box": {
                    "id": "obj-115",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1276.0, 446.0, 41.0, 22.0 ],
                    "triangle": 0,
                    "triscale": 0.9
                }
            },
            {
                "box": {
                    "id": "obj-118",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 978.0, 62.0, 53.0, 20.0 ],
                    "text": "duration"
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 954.0, 457.0, 38.0, 22.0 ],
                    "triangle": 0,
                    "triscale": 0.9
                }
            },
            {
                "box": {
                    "cantchange": 1,
                    "id": "obj-122",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 997.0, 457.0, 38.0, 22.0 ],
                    "triangle": 0,
                    "triscale": 0.9
                }
            },
            {
                "box": {
                    "id": "obj-124",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 881.0, 467.0, 44.0, 22.0 ],
                    "triangle": 0,
                    "triscale": 0.9
                }
            },
            {
                "box": {
                    "id": "obj-125",
                    "ignoreclick": 1,
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 783.0, 466.0, 44.0, 22.0 ],
                    "triangle": 0,
                    "triscale": 0.9
                }
            },
            {
                "box": {
                    "color": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-126",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1068.0, 433.0, 111.0, 24.0 ],
                    "text": "s #0-hi-pan"
                }
            },
            {
                "box": {
                    "color": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-127",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1059.0, 411.0, 111.0, 24.0 ],
                    "text": "s #0-lo-pan"
                }
            },
            {
                "box": {
                    "color": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-128",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1153.0, 531.0, 110.0, 24.0 ],
                    "text": "s #0-lo-dur"
                }
            },
            {
                "box": {
                    "color": [ 0.8, 0.839216, 0.709804, 1.0 ],
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-129",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1191.0, 557.0, 110.0, 24.0 ],
                    "text": "s #0-hi-dur"
                }
            },
            {
                "box": {
                    "id": "obj-132",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 820.0, 61.0, 52.5, 20.0 ],
                    "text": "location"
                }
            },
            {
                "box": {
                    "id": "obj-133",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 709.0, 62.0, 39.0, 20.0 ],
                    "text": "scrub"
                }
            },
            {
                "box": {
                    "id": "obj-135",
                    "listmode": 1,
                    "maxclass": "rslider",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1213.0, 385.0, 95.0, 20.0 ],
                    "varname": "transpo-lo-hi"
                }
            },
            {
                "box": {
                    "id": "obj-136",
                    "maxclass": "rslider",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 954.0, 416.0, 94.0, 26.0 ],
                    "size": 400.0,
                    "varname": "duration-lo-hi"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-138",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 181.0, 697.0, 67.0, 38.0 ],
                    "text": "(signal) L audio out"
                }
            },
            {
                "box": {
                    "fontname": "Lato",
                    "fontsize": 9.160198,
                    "id": "obj-143",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 301.0, 127.0, 70.0, 61.0 ],
                    "text": "(bang, float, stop, pause) linear playback (time stretching)"
                }
            },
            {
                "box": {
                    "bgcolor": [ 0.290196, 0.309804, 0.301961, 0.0 ],
                    "fgcolor": [ 0.803922, 0.898039, 0.909804, 0.5 ],
                    "id": "obj-8",
                    "maxclass": "rslider",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 774.0, 325.0, 113.0, 21.045282499999985 ],
                    "size": 1000.0,
                    "varname": "location-lo-hi"
                }
            },
            {
                "box": {
                    "buffername": "#0-sample",
                    "chanoffset": 0,
                    "fontsize": 11.595187,
                    "grid": 1.0,
                    "id": "obj-86",
                    "labels": 0,
                    "maxclass": "waveform~",
                    "norulerclick": 0,
                    "numinlets": 5,
                    "numoutlets": 6,
                    "outlettype": [ "float", "float", "float", "float", "list", "" ],
                    "patching_rect": [ 516.0, 468.0, 134.0, 19.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 241.0, 2.0, 95.0, 46.0 ],
                    "ruler": 0,
                    "setmode": 1,
                    "setunit": 1,
                    "ticks": 4,
                    "vticks": 0
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "bgcolor": [ 0.1843137254901961, 0.1843137254901961, 0.1843137254901961, 1.0 ],
                    "id": "obj-27",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 531.0, 697.0, 128.0, 54.0 ],
                    "presentation": 1,
                    "presentation_rect": [ 0.0, 1.0, 336.0, 102.0 ],
                    "proportion": 0.39
                }
            },
            {
                "box": {
                    "background": 1,
                    "fontface": 3,
                    "fontname": "Lato",
                    "fontsize": 13.0,
                    "id": "obj-68",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 327.0, 400.0, 124.0, 22.0 ],
                    "text": "granular DSP engine"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.890196, 0.090196, 1.0 ],
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-10", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.7529411912, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-109", 0 ],
                    "midpoints": [ 326.5, 292.375, 1109.5, 292.375 ],
                    "order": 0,
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.7529411912, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-11", 0 ],
                    "order": 3,
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.7529411912, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-120", 0 ],
                    "midpoints": [ 326.5, 291.74609375, 659.8125, 291.74609375, 659.8125, 51.8984375, 1082.5, 51.8984375 ],
                    "order": 1,
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.7529411912, 0.0, 0.0, 1.0 ],
                    "destination": [ "obj-72", 0 ],
                    "order": 2,
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-105", 0 ],
                    "source": [ "obj-102", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "source": [ "obj-104", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 1 ],
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 0 ],
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-126", 0 ],
                    "order": 0,
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "order": 1,
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 2 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 0 ],
                    "order": 1,
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "hidden": 1,
                    "order": 0,
                    "source": [ "obj-110", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-112", 0 ],
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "order": 1,
                    "source": [ "obj-115", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-165", 0 ],
                    "order": 0,
                    "source": [ "obj-115", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 0 ],
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-139", 0 ],
                    "source": [ "obj-117", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-177", 0 ],
                    "order": 1,
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-92", 0 ],
                    "order": 0,
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 0 ],
                    "source": [ "obj-124", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 0 ],
                    "source": [ "obj-125", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-148", 0 ],
                    "source": [ "obj-134", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-166", 0 ],
                    "order": 1,
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-169", 0 ],
                    "order": 2,
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "order": 0,
                    "source": [ "obj-135", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-121", 0 ],
                    "source": [ "obj-136", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-122", 0 ],
                    "order": 1,
                    "source": [ "obj-136", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "order": 0,
                    "source": [ "obj-136", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 0 ],
                    "source": [ "obj-137", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-130", 0 ],
                    "source": [ "obj-139", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-14", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "midpoints": [ 258.5, 450.205841, 479.5, 450.205841 ],
                    "order": 0,
                    "source": [ "obj-140", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "order": 1,
                    "source": [ "obj-140", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 0 ],
                    "source": [ "obj-144", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-144", 0 ],
                    "source": [ "obj-148", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 0 ],
                    "source": [ "obj-149", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-150", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 0 ],
                    "source": [ "obj-151", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-163", 0 ],
                    "source": [ "obj-156", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-137", 1 ],
                    "midpoints": [ 942.5, 527.5390625, 841.5, 527.5390625 ],
                    "order": 3,
                    "source": [ "obj-157", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-139", 1 ],
                    "order": 1,
                    "source": [ "obj-157", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-170", 1 ],
                    "midpoints": [ 942.5, 386.9140625, 823.5, 386.9140625 ],
                    "order": 4,
                    "source": [ "obj-157", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-171", 1 ],
                    "midpoints": [ 942.5, 386.01171875, 921.5, 386.01171875 ],
                    "order": 2,
                    "source": [ "obj-157", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 1 ],
                    "order": 0,
                    "source": [ "obj-157", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.811765, 0.372549, 0.372549, 1.0 ],
                    "destination": [ "obj-125", 0 ],
                    "source": [ "obj-158", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.811765, 0.372549, 0.372549, 1.0 ],
                    "destination": [ "obj-124", 0 ],
                    "source": [ "obj-159", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "midpoints": [ 137.5, 628.7109375, 213.5, 628.7109375 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-156", 0 ],
                    "source": [ "obj-162", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "source": [ "obj-163", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 4 ],
                    "source": [ "obj-164", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-165", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-166", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-174", 0 ],
                    "source": [ "obj-168", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-82", 0 ],
                    "source": [ "obj-168", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-114", 0 ],
                    "source": [ "obj-169", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-115", 0 ],
                    "source": [ "obj-169", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-158", 1 ],
                    "source": [ "obj-170", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-158", 0 ],
                    "source": [ "obj-170", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-159", 1 ],
                    "source": [ "obj-171", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-159", 0 ],
                    "source": [ "obj-171", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-85", 0 ],
                    "source": [ "obj-172", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-173", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-175", 0 ],
                    "source": [ "obj-174", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "source": [ "obj-174", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-162", 0 ],
                    "source": [ "obj-177", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-156", 1 ],
                    "source": [ "obj-178", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-17", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 3 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 1 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-80", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 1 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "order": 1,
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 0,
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-173", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "midpoints": [ 354.25, 228.5, 326.5, 228.5 ],
                    "source": [ "obj-35", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "midpoints": [ 315.5, 225.5, 326.5, 225.5 ],
                    "source": [ "obj-35", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 1 ],
                    "source": [ "obj-35", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-104", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 1 ],
                    "source": [ "obj-35", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 1 ],
                    "source": [ "obj-35", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 1 ],
                    "source": [ "obj-36", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 1 ],
                    "source": [ "obj-39", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 1 ],
                    "source": [ "obj-43", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 1 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 0 ],
                    "order": 0,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "order": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-140", 0 ],
                    "midpoints": [ 258.5, 386.96484375, 258.5, 386.96484375 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-62", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 1 ],
                    "source": [ "obj-61", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-60", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-62", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.8, 0.8, 0.8, 1.0 ],
                    "destination": [ "obj-172", 0 ],
                    "source": [ "obj-66", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "midpoints": [ 518.8333333333334, 357.0717160999775, 415.5, 357.0717160999775 ],
                    "source": [ "obj-66", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 1 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-140", 0 ],
                    "midpoints": [ 275.5, 387.5833375155926, 258.5, 387.5833375155926 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "midpoints": [ 599.5, 319.2421875, 415.5, 319.2421875 ],
                    "source": [ "obj-74", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-168", 0 ],
                    "midpoints": [ 1623.5, 478.10546875, 1450.5, 478.10546875 ],
                    "source": [ "obj-75", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-78", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-83", 0 ],
                    "source": [ "obj-8", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-135", 0 ],
                    "source": [ "obj-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-81", 0 ],
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-171", 0 ],
                    "order": 0,
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "midpoints": [ 873.5, 600.80078125, 792.5, 600.80078125 ],
                    "order": 1,
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-170", 0 ],
                    "order": 0,
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "order": 1,
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 0 ],
                    "source": [ "obj-88", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 1 ],
                    "order": 1,
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 1 ],
                    "midpoints": [ 723.5, 461.25, 900.0, 461.25 ],
                    "order": 0,
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 1.0, 0.890196, 0.090196, 1.0 ],
                    "destination": [ "obj-42", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-178", 0 ],
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "source": [ "obj-94", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-134", 0 ],
                    "midpoints": [ 26.5, 96.0, 26.5, 96.0 ],
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.999993324279785, 0.999963343143463, 0.041014768183231, 1.0 ],
                    "destination": [ "obj-128", 0 ],
                    "order": 1,
                    "source": [ "obj-98", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.999993324279785, 0.999963343143463, 0.041014768183231, 1.0 ],
                    "destination": [ "obj-129", 0 ],
                    "order": 0,
                    "source": [ "obj-98", 0 ]
                }
            },
            {
                "patchline": {
                    "color": [ 0.999993324279785, 0.999963343143463, 0.041014768183231, 1.0 ],
                    "destination": [ "obj-71", 0 ],
                    "midpoints": [ 1162.5, 393.61328125, 323.5, 393.61328125 ],
                    "order": 2,
                    "source": [ "obj-98", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-120": [ "div[1]", "div", 0 ],
            "obj-134": [ "live.dial[4]", "speed", 0 ],
            "obj-149": [ "step[1]", "step", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0,
        "oscreceiveudpport": 0
    }
}