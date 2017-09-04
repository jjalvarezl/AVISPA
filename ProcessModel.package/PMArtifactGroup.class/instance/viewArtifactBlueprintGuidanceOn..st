visualization
viewArtifactBlueprintGuidanceOn: aView 
	| mondrian legend |
	"We display the blueprint"
	mondrian:= RTMondrian new.
	mondrian view: aView.
	mondrian interaction highlightNeighbors: #outputArtifacts color: Color orange.
	mondrian shape rectangle
		borderColor: Color black;
		borderWidth: 1;
	   fillColor:[:each | (each myGuidelines isEmpty) ifTrue: [Color blue] ifFalse: [Color white]]; 
		width: [ :each | each numberOfOutputTasks * 10 ];
		height: [ :each | each numberOfInputTasks * 10 ].
		"text: [:each | each presentationName ]."
	mondrian nodes: (self sorted: [ :m1 :m2 | m1 numberOfInputTasks < m2 numberOfInputTasks ]).
	mondrian shape arrowedLine color: Color gray trans; withShorterDistanceAttachPoint.
   mondrian edges source: self connectFrom: #yourself toAll: #outputArtifacts.
	mondrian layout tree.
	mondrian build.
	legend := RTLegendBuilder new.
	legend view: aView view.
	legend addText: 'WorkProduct without Guidelines'.
	legend addRectanglePolymetricWidth: '#TasksAsOutput' height: '#TasksAsInput' box: 'WorkProduct'.
	legend addColor: Color blue text:'Artefacts without Guidelines'.
	legend addLineColor: Color gray text:'Artefact Dependence'.
	legend build.