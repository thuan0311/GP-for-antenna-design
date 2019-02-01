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
"XPosition:=", "-2.645906mm", _
"YPosition:=", "-2.088934mm", _
"ZPosition:=", "0.000000mm", _
"XSize:=", "26.518500mm", _
"YSize:=", "24.383700mm", _
"ZSize:=", "-1.386400mm"), _
Array("NAME:Attributes", _
"Name:=", "Substrate", _
"Flags:=", "", _
"Color:=", "(132 132 193)", _
"Transparency:=", 0.75, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.AssignMaterial _
	Array("NAME:Selections", _
		"Selections:=", "Substrate"), _
	Array("NAME:Attributes", _
		"MaterialName:=", "FR4_epoxy", _
		"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "9.0771mm", "Y:=", "5.8988mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "2.5654mm", "Y:=", "5.8988mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "2.5654mm", "Y:=", "7.5377mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "3.3859mm", "Y:=", "7.5377mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "3.3859mm", "Y:=", "12.9514mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "0.9529mm", "Y:=", "12.9514mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "0.9529mm", "Y:=", "13.7190mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "7.4642mm", "Y:=", "13.7190mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "7.4642mm", "Y:=", "7.0886mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "9.0771mm", "Y:=", "7.0886mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "9.0771mm",   "Y:=", "5.8988mm",   "Z:=", "0.0000mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 4, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 5, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 6, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 7, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 8, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 9, "NoOfPoints:=", 2) _
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
			Array("NAME:PLPoint", "X:=", "2.5654mm", "Y:=", "5.8988mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "9.0771mm", "Y:=", "5.8988mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "9.0771mm", "Y:=", "0.0714mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "2.5654mm", "Y:=", "0.0714mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "2.5654mm",   "Y:=", "5.8988mm",   "Z:=", "0.0000mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
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
			Array("NAME:PLPoint", "X:=", "2.5654mm", "Y:=", "5.8988mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "0.9333mm", "Y:=", "5.8988mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "0.9333mm", "Y:=", "13.7190mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "0.9529mm", "Y:=", "13.7190mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "0.9529mm", "Y:=", "12.9514mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "3.3859mm", "Y:=", "12.9514mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "3.3859mm", "Y:=", "7.5377mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "2.5654mm", "Y:=", "7.5377mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "2.5654mm",   "Y:=", "5.8988mm",   "Z:=", "0.0000mm")_
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
			Array("NAME:PLPoint", "X:=", "9.0771mm", "Y:=", "14.2514mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "13.9322mm", "Y:=", "14.2514mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "13.9322mm", "Y:=", "19.3112mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "16.0852mm", "Y:=", "19.3112mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "16.0852mm", "Y:=", "7.0886mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "9.0771mm", "Y:=", "7.0886mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "9.0771mm",   "Y:=", "14.2514mm",   "Z:=", "0.0000mm")_
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
			Array("NAME:PLPoint", "X:=", "13.9322mm", "Y:=", "14.2514mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "9.0771mm", "Y:=", "14.2514mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "9.0771mm", "Y:=", "19.3112mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "13.9322mm", "Y:=", "19.3112mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "13.9322mm",   "Y:=", "14.2514mm",   "Z:=", "0.0000mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
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

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "16.0852mm", "Y:=", "7.0886mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "16.0852mm", "Y:=", "5.8988mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "9.0771mm", "Y:=", "5.8988mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "9.0771mm", "Y:=", "7.0886mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "16.0852mm",   "Y:=", "7.0886mm",   "Z:=", "0.0000mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "polygon6", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "7.4642mm", "Y:=", "13.7190mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "0.9529mm", "Y:=", "13.7190mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "0.9529mm", "Y:=", "20.1345mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "9.0771mm", "Y:=", "20.1345mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "9.0771mm", "Y:=", "19.3112mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "8.3800mm", "Y:=", "19.3112mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "8.3800mm", "Y:=", "14.2514mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "7.4642mm", "Y:=", "14.2514mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "7.4642mm",   "Y:=", "13.7190mm",   "Z:=", "0.0000mm")_
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
"Name:=", "polygon7", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "7.4642mm", "Y:=", "7.0886mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "7.4642mm", "Y:=", "13.7190mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "8.3800mm", "Y:=", "13.7190mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "8.3800mm", "Y:=", "14.2514mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "9.0771mm", "Y:=", "14.2514mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "9.0771mm", "Y:=", "7.0886mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "7.4642mm",   "Y:=", "7.0886mm",   "Z:=", "0.0000mm")_
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
"Name:=", "polygon8", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "9.0771mm", "Y:=", "19.3112mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "9.0771mm", "Y:=", "14.2514mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "8.3800mm", "Y:=", "14.2514mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "8.3800mm", "Y:=", "19.3112mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "9.0771mm",   "Y:=", "19.3112mm",   "Z:=", "0.0000mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "polygon9", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "16.0852mm", "Y:=", "19.3112mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "13.9322mm", "Y:=", "19.3112mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "13.9322mm", "Y:=", "19.9071mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "20.2933mm", "Y:=", "19.9071mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "20.2933mm", "Y:=", "7.0886mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "16.0852mm", "Y:=", "7.0886mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "16.0852mm",   "Y:=", "19.3112mm",   "Z:=", "0.0000mm")_
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
"Name:=", "polygon10", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.CreatePolyline _
	Array("NAME:PolylineParameters", "IsPolylineCovered:=", true, "IsPolylineClosed:=", true, _
		Array("NAME:PolylinePoints", _
			Array("NAME:PLPoint", "X:=", "8.3800mm", "Y:=", "13.7190mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "7.4642mm", "Y:=", "13.7190mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "7.4642mm", "Y:=", "14.2514mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "8.3800mm", "Y:=", "14.2514mm", "Z:=", "0.0000mm"), _
			Array("NAME:PLPoint", "X:=", "8.3800mm",   "Y:=", "13.7190mm",   "Z:=", "0.0000mm")_
			), _ 
		Array("NAME:PolylineSegments", _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 0, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 1, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 2, "NoOfPoints:=", 2), _
			Array("NAME:PLSegment", "SegmentType:=",  "Line", "StartIndex:=", 3, "NoOfPoints:=", 2) _
			) _
		), _
Array("NAME:Attributes", _
"Name:=", "polygon11", _
"Flags:=", "", _
"Color:=", "(0 0 0)", _
"Transparency:=", 0.800000, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.Unite  _
Array("NAME:Selections", _
"Selections:=", "polygon1,polygon2,polygon3,polygon4,polygon5,polygon6,polygon7,polygon8,polygon9,polygon10,polygon11"), _
Array("NAME:UniteParameters", "KeepOriginals:=", false)

oEditor.ChangeProperty _
Array("NAME:AllTabs", _
Array("NAME:Geometry3DAttributeTab", _
Array("NAME:PropServers", "polygon1"), _
Array("NAME:ChangedProps", _
Array("NAME:Name", _
"Value:=", "patch"))))

Set oModule = oDesign.GetModule("BoundarySetup")
oModule.AssignPerfectE _
Array("NAME:Perf1", _
"InfGroundPlane:=", false, _
"Objects:=", _
Array("patch"))

oEditor.CreateRectangle _
Array("NAME:RectangleParameters", _
"IsCovered:=", true, _
"XStart:=", "-2.645906mm", _
"YStart:=", "-2.088934mm", _
"ZStart:=", "-1.386400mm", _
"Width:=", "26.518500mm", _
"Height:=", "24.383700mm", _
"WhichAxis:=", "Z"), _
Array("NAME:Attributes", _
"Name:=", "GroundPlane", _
"Flags:=", "", _
"Color:=", "(132 132 193)", _
"Transparency:=", 0, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)
oEditor.CreateCircle _
Array("NAME:CircleParameters", _
"IsCovered:=", true, _
"XCenter:=", "15.033094mm", _
"YCenter:=", "10.102916mm", _
"ZCenter:=", "-1.386400mm", _
"Radius:=", "1.000000mm", _
"WhichAxis:=", "Z"), _
Array("NAME:Attributes", _
"Name:=", "Groundcir", _
"Flags:=", "", _
"Color:=", "(132 132 193)", _
"Transparency:=", 0, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

oEditor.Subtract _
Array("NAME:Selections", _
"Blank Parts:=", _
"GroundPlane", _
"Tool Parts:=", _
"Groundcir"), _
Array("NAME:SubtractParameters", _
"KeepOriginals:=", false) 

Set oModule = oDesign.GetModule("BoundarySetup")
oModule.AssignPerfectE _
Array("NAME:GND", _
"InfGroundPlane:=", false, _
"Objects:=", _
Array("GroundPlane"))

oEditor.CreateCylinder _
Array("NAME:CylinderParameters", _
"XCenter:=", "15.033094mm", _
"YCenter:=", "10.102916mm", _
"ZCenter:=", "-1.386400mm", _
"Radius:=", "0.300000mm", _
"Height:=", "1.386400mm", _
"WhichAxis:=", "Z"), _
Array("NAME:Attributes", _
"Name:=", "Cyl1", _
"Flags:=", "", _
"Color:=", "(132 132 193)", _
"Transparency:=", 0, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)


oEditor.AssignMaterial _
	Array("NAME:Selections", _
		"Selections:=", "Cyl1"), _
	Array("NAME:Attributes", _
		"MaterialName:=", "copper", _
		"SolveInside:=", false)

oEditor.CreateCylinder _
Array("NAME:CylinderParameters", _
"XCenter:=", "15.033094mm", _
"YCenter:=", "10.102916mm", _
"ZCenter:=", "-6.386400mm", _
"Radius:=", "1.000000mm", _
"Height:=", "5.000000mm", _
"WhichAxis:=", "Z"), _
Array("NAME:Attributes", _
"Name:=", "Cyl1_Out", _
"Flags:=", "", _
"Color:=", "(132 132 193)", _
"Transparency:=", 0, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)


oEditor.CreateCylinder _
Array("NAME:CylinderParameters", _
"XCenter:=", "15.033094mm", _
"YCenter:=", "10.102916mm", _
"ZCenter:=", "-6.386400mm", _
"Radius:=", "0.700000mm", _
"Height:=", "5.000000mm", _
"WhichAxis:=", "Z"), _
Array("NAME:Attributes", _
"Name:=", "Cyl1_Out_sub", _
"Flags:=", "", _
"Color:=", "(132 132 193)", _
"Transparency:=", 0, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)


oEditor.Subtract _
Array("NAME:Selections", _
"Blank Parts:=", _
"Cyl1_Out", _
"Tool Parts:=", _
"Cyl1_Out_sub"), _
Array("NAME:SubtractParameters", _
"KeepOriginals:=", false) 

oEditor.CreateCylinder _
Array("NAME:CylinderParameters", _
"XCenter:=", "15.033094mm", _
"YCenter:=", "10.102916mm", _
"ZCenter:=", "-6.386400mm", _
"Radius:=", "0.700000mm", _
"Height:=", "5.000000mm", _
"WhichAxis:=", "Z"), _
Array("NAME:Attributes", _
"Name:=", "Cyl1_Er", _
"Flags:=", "", _
"Color:=", "(132 132 193)", _
"Transparency:=", 0, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)


oEditor.CreateCylinder _
Array("NAME:CylinderParameters", _
"XCenter:=", "15.033094mm", _
"YCenter:=", "10.102916mm", _
"ZCenter:=", "-6.386400mm", _
"Radius:=", "0.300000mm", _
"Height:=", "5.000000mm", _
"WhichAxis:=", "Z"), _
Array("NAME:Attributes", _
"Name:=", "Cyl1_Er_sub", _
"Flags:=", "", _
"Color:=", "(132 132 193)", _
"Transparency:=", 0, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)


oEditor.Subtract _
Array("NAME:Selections", _
"Blank Parts:=", _
"Cyl1_Er", _
"Tool Parts:=", _
"Cyl1_Er_sub"), _
Array("NAME:SubtractParameters", _
"KeepOriginals:=", false) 

oEditor.CreateCylinder _
Array("NAME:CylinderParameters", _
"XCenter:=", "15.033094mm", _
"YCenter:=", "10.102916mm", _
"ZCenter:=", "-6.386400mm", _
"Radius:=", "0.300000mm", _
"Height:=", "5.000000mm", _
"WhichAxis:=", "Z"), _
Array("NAME:Attributes", _
"Name:=", "Cyl1_In", _
"Flags:=", "", _
"Color:=", "(132 132 193)", _
"Transparency:=", 0, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)


oEditor.AssignMaterial _
	Array("NAME:Selections", _
		"Selections:=", "Cyl1_In"), _
	Array("NAME:Attributes", _
		"MaterialName:=", "copper", _
		"SolveInside:=", false)

oEditor.AssignMaterial _
	Array("NAME:Selections", _
		"Selections:=", "Cyl1_Er"), _
	Array("NAME:Attributes", _
		"MaterialName:=", "air", _
		"SolveInside:=", true)

oEditor.AssignMaterial _
	Array("NAME:Selections", _
		"Selections:=", "Cyl1_Out"), _
	Array("NAME:Attributes", _
		"MaterialName:=", "copper", _
		"SolveInside:=", false)
oEditor.CreateCircle _
Array("NAME:CircleParameters", _
"IsCovered:=", true, _
"XCenter:=", "15.033094mm", _
"YCenter:=", "10.102916mm", _
"ZCenter:=", "-6.386400mm", _
"Radius:=", "0.700000mm", _
"WhichAxis:=", "Z"), _
Array("NAME:Attributes", _
"Name:=", "feed", _
"Flags:=", "", _
"Color:=", "(132 132 193)", _
"Transparency:=", 0, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)

Set oModule = oDesign.GetModule("BoundarySetup")
oModule.AssignLumpedPort _
Array("NAME:Port1", _
      Array("NAME:Modes", _
             Array("NAME:Mode1", _
                   "ModeNum:=", 1, _
                   "UseIntLine:=", true, _
                   Array("NAME:IntLine", _
                          "Start:=", Array("15.033094mm", "10.802916mm", "-6.386400mm"), _
                          "End:=",   Array("15.033094mm", "10.402916mm", "-6.386400mm") _
                         ), _
                   "CharImp:=", "Zpi" _
                   ) _
            ), _
      "Resistance:=", "50.000000Ohm", _
      "Reactance:=", "0.000000Ohm", _
      "Objects:=", Array("feed") _
      )

oEditor.CreateBox _
Array("NAME:BoxParameters", _
"XPosition:=", "-24.074477mm", _
"YPosition:=", "-23.517506mm", _
"ZPosition:=", "-49.243543mm", _
"XSize:=", "69.375643mm", _
"YSize:=", "67.240843mm", _
"ZSize:=", "92.100686mm"), _
Array("NAME:Attributes", _
"Name:=", "AirBox", _
"Flags:=", "", _
"Color:=", "(132 132 193)", _
"Transparency:=", 0.75, _
"PartCoordinateSystem:=", "Global", _
"MaterialName:=", "vacuum", _
"SolveInside:=", true)
Set oModule = oDesign.GetModule("BoundarySetup")
oModule.AssignRadiation _
Array("NAME:ABC", _
"Objects:=", Array("AirBox"))

oEditor.ChangeProperty _
Array("NAME:AllTabs", _
	Array("NAME:Geometry3DAttributeTab", _
		Array("NAME:PropServers","AirBox"), _
		Array("NAME:ChangedProps", _
			Array("NAME:Transparent", "Value:=",  0.950000) _
			) _
		) _
	)

Set oModule = oDesign.GetModule("AnalysisSetup")
oModule.InsertSetup "HfssDriven", _
Array("NAME:Solution1", _
"Frequency:=", "3.500000GHz", _
"PortsOnly:=", false, _
"maxDeltaS:=", 0.020000, _
"UseMatrixConv:=", false, _
"MaximumPasses:=", 25, _
"MinimumPasses:=", 1, _
"MinimumConvergedPasses:=", 1, _
"PercentRefinement:=", 20, _
"ReducedSolutionBasis:=", false, _
"DoLambdaRefine:=", true, _
"DoMaterialLambda:=", true, _
"Target:=", 0.3333, _
"PortAccuracy:=", 2, _
"SetPortMinMaxTri:=", false)

Set oModule = oDesign.GetModule("AnalysisSetup")
oModule.InsertDrivenSweep _
"Solution1", _
Array("NAME:Sweep1", _
"Type:=", "Interpolating", _
"InterpTolerance:=", 0.500000, _
"InterpMaxSolns:=", 101, _
"SetupType:=", "LinearCount", _
"StartFreq:=", "3.300000GHz", _
"StopFreq:=", "3.700000GHz", _
"Count:=", 200, _
"SaveFields:=", false, _
"ExtrapToDC:=", false)

Set oModule = oDesign.GetModule("ReportSetup")
oModule.CreateReport "ReturnLoss", _
"Modal S Parameter", _
"Rectangular Plot", _
"Solution1 : Sweep1", _
Array("Domain:=", "Sweep"), _
Array("Freq:=", Array("All")), _
Array("X Component:=", "Freq", _
"Y Component:=", Array("db(S(Port1,Port1))")), _
Array()

oDesign.Solve _
    Array("Solution1") 
