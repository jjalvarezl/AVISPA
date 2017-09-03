visualization
viewRoleBlueprintGuidelinesOn: view 
	"mondrian is an instance of RTMondrian"
	
	"We display the blueprint"
   | legend mondrian |
	mondrian := RTMondrian new.
	mondrian view: view.
	mondrian interaction highlightNeighbour: #relatedRoles color: Color orange.
	mondrian shape rectangle
	     width: [:each | each numberOfAssociatedArtifacts * 2];
	     height: [:each | each numberOfTasks * 2];
	     borderColor: Color black;
		  fillColor:[:each | ((each myGuidelines asArray size) > 0) ifTrue: [Color white] ifFalse: [Color blue]]. 
	     "text: [:each | each presentationName ]."
   mondrian nodes: self.
   mondrian shape arrowedLine color: Color gray trans; withShorterDistanceAttachPoint.
   mondrian edges source: self connectFrom: #yourself toAll: #relatedRoles.
	mondrian layout circle.
	mondrian build.
	
	legend := RTLegendBuilder new.
	legend view: mondrian view.
	legend addText: 'Role Blueprint Guidelines'.
	legend addRectanglePolymetricWidth: '#Associated Artifacts' height: '#Tasks' box: 'Role'.
	legend addColor: Color blue text:'Role without guidelines'.
	legend addLineColor: Color gray text:'Role Cooperation'.
	legend build