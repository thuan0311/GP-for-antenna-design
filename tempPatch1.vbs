Dim oHfssApp
Dim oDesktop
Dim oProject
Dim oDesign
Dim oEditor
Dim oModule

Set oHfssApp  = CreateObject("AnsoftHfss.HfssScriptInterface")
Set oDesktop = oHfssApp.GetAppDesktop()
oDesktop.RestoreWindow
oDesktop.NewProject
Set oProject = oDesktop.GetActiveProject

oProject.InsertDesign "HFSS", "NxN_uStrip_Patch", "DrivenModal", ""
Set oDesign = oProject.SetActiveDesign("NxN_uStrip_Patch")
Set oEditor = oDesign.SetActiveEditor("3D Modeler")

oEditor.CreateBox _
Array("NAME:BoxParameters", _
"XPosition:=", "0.199879mm", _
"YPosition:=", "-2.082003mm", _
"ZPosition:=", "0.000000mm", _
"XSize:=", "11.084200mm", _
"YSize:=", "11.109800mm", _
"ZSize:=", "-1.577300mm"), _
Array("NAME:Attributes", _
"Name:=", "Substrate", _
"Flags:=", "", _
"Color:=", "(132 132 193)", _
"Transparency:=", 0.75, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "6.6225mm", "Y:=", "3.2593mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "7.4703mm", "Y:=", "3.2593mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "7.4703mm", "Y:=", "5.3405mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "10.0645mm", "Y:=", "5.3405mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "10.0645mm", "Y:=", "1.2743mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "2.6600mm", "Y:=", "1.2743mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "2.6600mm", "Y:=", "1.7795mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "6.6225mm", "Y:=", "1.7795mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "6.6225mm",   "Y:=", "3.2593mm",   "Z:=", "0.0000mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 4, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 5, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 6, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 7, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "polygon1", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "6.6225mm", "Y:=", "3.2593mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "4.4877mm", "Y:=", "3.2593mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "4.4877mm", "Y:=", "3.5393mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "4.3778mm", "Y:=", "3.5393mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "4.3778mm", "Y:=", "5.3906mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "6.6225mm", "Y:=", "5.3906mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "6.6225mm",   "Y:=", "3.2593mm",   "Z:=", "0.0000mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 4, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 5, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "polygon2", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "4.3778mm", "Y:=", "3.5393mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "4.4877mm", "Y:=", "3.5393mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "4.4877mm", "Y:=", "3.2593mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "6.6225mm", "Y:=", "3.2593mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "6.6225mm", "Y:=", "1.7795mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "2.6600mm", "Y:=", "1.7795mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "2.6600mm", "Y:=", "3.1677mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "4.3778mm", "Y:=", "3.1677mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "4.3778mm",   "Y:=", "3.5393mm",   "Z:=", "0.0000mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 4, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 5, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 6, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 7, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "polygon3", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "2.6600mm", "Y:=", "3.1677mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "2.6600mm", "Y:=", "3.5393mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "4.3778mm", "Y:=", "3.5393mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "4.3778mm", "Y:=", "3.1677mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "2.6600mm",   "Y:=", "3.1677mm",   "Z:=", "0.0000mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "polygon4", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "2.6600mm", "Y:=", "3.1677mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "2.6600mm", "Y:=", "1.7795mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "1.4195mm", "Y:=", "1.7795mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "1.4195mm", "Y:=", "5.6715mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "2.4750mm", "Y:=", "5.6715mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "2.4750mm", "Y:=", "3.1677mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "2.6600mm",   "Y:=", "3.1677mm",   "Z:=", "0.0000mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 4, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 5, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "polygon5", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)
