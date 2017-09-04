visualization
viewRoleBlueprintOn: mondrian
	| coll view legend|

	"----------------------"
	
	view := RTMondrian new.
	view view:mondrian. 
	
	coll:=self asArray.
	"We display the blueprint"
	view interaction highlightNeighbour: #relatedRoles color: Color orange.
   view shape rectangle
        "linearFillColor: #numberOfGuidelines within: self;"
	     width: [:each | each numberOfAssociatedArtifacts * 2];
	     height: [:each | each numberOfTasks * 2];
	     borderColor: Color black;
           linearFillColor: [:each | each myGuidelines asArray size + 1] within: coll.
	     "text: [:each | each presentationName ]."

	view interaction item: 'inspect' action: #inspect.
   view nodes: coll.
   view shape arrowedLine color: Color gray trans; withShorterDistanceAttachPoint.
   view edges source: coll connectFrom: #yourself toAll: #relatedRoles.
	view layout circle.
	view build.
	legend := RTLegendBuilder new.
	legend view: view view.
	legend addText: 'Role Blueprint'.
	legend addRectanglePolymetricWidth: '#Associated Artifacts' height: '#Tasks' box: 'Role'.
	legend addColor: Color gray text:'Number of the guidelines related'.
	legend addLineColor: Color gray text:'Role Cooperation'.
	legend build