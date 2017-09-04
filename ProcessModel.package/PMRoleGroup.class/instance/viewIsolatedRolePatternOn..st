visualization
viewIsolatedRolePatternOn: rtView
|view legend|
	"We display the pattern"
	view:= RTMondrian new.
	view view: rtView.
	view interaction highlightNeighbors: #relatedRoles color: Color orange.
   	view shape rectangle
	     width: [:each | each numberOfAssociatedArtifacts * 2];
	     height: [:each | each numberOfTasks * 2];
	     borderColor: Color black;
	     fillColor:[:each | (((each  relatedRoles) size ) > 1) ifTrue: [Color white] ifFalse: [Color red]]. 
	     "text: [:each | each presentationName ]."
   	view nodes: self.
	view shape arrowedLine color: Color gray trans; withShorterDistanceAttachPoint.
   	view edges source: self connectFrom: #yourself toAll: #relatedRoles.
	view layout circle.
	view build.
   legend := RTLegendBuilder new.
	legend view: view view.
	legend addText: 'Isolated Roles Pattern'.
	legend addRectanglePolymetricWidth: '#Associated Artifacts' height: '#Tasks' box: 'Role'.
	legend addColor: Color red text:'Isolated Roles'.
	legend addLineColor: Color gray text:'Role Cooperation'.
	legend build