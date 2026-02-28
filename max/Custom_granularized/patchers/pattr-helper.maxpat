{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 45.0, 349.0, 597.0, 233.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 11.595186999999999,
		"default_fontface" : 0,
		"default_fontname" : "Lato",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-10",
					"linecolor" : [ 0.6, 0.6, 0.6, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 178.0, 23.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 180.0, 23.0, 5.0, 100.0 ],
					"saved_attribute_attributes" : 					{
						"linecolor" : 						{
							"expression" : ""
						}

					}

				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"linecolor" : [ 0.6, 0.6, 0.6, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 197.0, 185.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 129.0, 23.0, 5.0, 100.0 ],
					"saved_attribute_attributes" : 					{
						"linecolor" : 						{
							"expression" : ""
						}

					}

				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"fontsize" : 11.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 72.739281000000005, 60.841270000000002, 42.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 51.0, 23.0, 42.0, 20.0 ],
					"text" : "preset"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"fontsize" : 10.0,
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 34.049743999999997, 134.523804000000013, 34.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 26.0, 64.0, 33.0, 18.0 ],
					"text" : "recall"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"fontsize" : 10.0,
					"id" : "obj-2",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 128.128647000000001, 143.793655000000001, 31.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 78.0, 66.0, 31.0, 20.0 ],
					"text" : "store"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"fontsize" : 11.0,
					"id" : "obj-19",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 315.756439, 80.873016000000007, 37.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 209.0, 23.0, 37.0, 20.0 ],
					"text" : "view "
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"fontsize" : 10.0,
					"id" : "obj-16",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 333.756439, 136.793655000000001, 68.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 187.0, 66.0, 78.0, 20.0 ],
					"text" : "clientwindow",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"fontsize" : 10.0,
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 315.756439, 107.206351999999995, 78.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 187.0, 42.0, 78.0, 20.0 ],
					"text" : "storagewindow",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"fontsize" : 10.0,
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 244.257294000000002, 110.968254000000002, 32.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 141.0, 42.0, 33.0, 20.0 ],
					"text" : "read",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"fontsize" : 10.0,
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 261.257294000000002, 134.793655000000001, 33.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 141.0, 66.0, 33.0, 20.0 ],
					"text" : "write",
					"textjustification" : 1
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-11",
					"index" : 1,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 222.207549999999998, 247.650787000000008, 25.0, 25.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"fontsize" : 10.0,
					"id" : "obj-9",
					"maxclass" : "number",
					"minimum" : 0,
					"mousefilter" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 182.898787999999996, 125.936508000000003, 48.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.0, 42.0, 48.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"fontsize" : 11.595186999999999,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 128.128647000000001, 164.888884999999988, 74.0, 22.0 ],
					"text" : "pack store 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"fontsize" : 10.0,
					"id" : "obj-4",
					"maxclass" : "number",
					"minimum" : 0,
					"mousefilter" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 14.939965000000001, 106.936508000000003, 48.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.0, 42.0, 48.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial Black",
					"fontsize" : 13.237304,
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 12.0, 11.26984, 151.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 13.0, 1.0, 151.0, 25.0 ],
					"text" : "pattrstorage helper",
					"textcolor" : [ 0.8, 0.376471, 0.270588, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"fontsize" : 11.0,
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 244.257294000000002, 83.380950999999996, 31.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 143.0, 23.0, 31.0, 20.0 ],
					"text" : "disk"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Lato",
					"fontsize" : 11.595186999999999,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 14.939965000000001, 81.349204999999998, 68.0, 22.0 ],
					"text" : "route int"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-5",
					"index" : 1,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 14.939965000000001, 42.0, 23.0, 23.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 270.757294000000002, 218.809525000000008, 231.707549999999998, 218.809525000000008 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 253.757294000000002, 213.793655000000001, 231.707549999999998, 213.793655000000001 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 325.256439, 227.587296000000009, 231.707549999999998, 227.587296000000009 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 343.256439, 233.857146999999998, 231.707549999999998, 233.857146999999998 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.415686, 0.239216, 0.109804, 1.0 ],
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 24.439965000000001, 228.841262999999998, 231.707549999999998, 228.841262999999998 ],
					"order" : 0,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.415686, 0.239216, 0.109804, 1.0 ],
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 24.439965000000001, 158.61904899999999, 109.018867, 158.61904899999999, 109.018867, 114.158730000000006, 192.398787999999996, 114.158730000000006 ],
					"order" : 1,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.278431, 0.921569, 0.639216, 1.0 ],
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 73.439965000000001, 223.198409999999996, 231.707549999999998, 223.198409999999996 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 137.628647000000001, 215.047622999999987, 231.707549999999998, 215.047622999999987 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ]
	}

}
