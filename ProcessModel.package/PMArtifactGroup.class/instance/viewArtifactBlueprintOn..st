visualization
viewArtifactBlueprintOn: aView 
	"----------------------"
	"We display the blueprint"
	
	| coll b legend|
	b := RTMondrian new.
	b view: aView.
	b interaction highlightNeighbors: #outputArtifacts color: Color orange.
	coll :=  (self sorted: [:m1 :m2 | m1 numberOfInputTasks < m2 numberOfInputTasks]) asArray.
	b shape rectangle
		borderColor: Color black;
		borderWidth: 1;
		linearFillColor:   [: each | (each myGuidelines asArray size / 5)]  within: coll ; 
		width: [ :each | each numberOfOutputTasks * 10 ];
		height: [ :each | each numberOfInputTasks * 10 ].
		"text: [:each | each presentationName ]."
	b nodes: coll.
	b shape arrowedLine color: Color gray trans; withShorterDistanceAttachPoint.
   b edges source: self connectFrom: #yourself toAll: #outputArtifacts.
	b layout tree.
	b build.
	legend := RTLegendBuilder new.
	legend view: b view.
	legend addText: 'WorkProduct without Guidelines'.
	legend addRectanglePolymetricWidth: '#TasksAsOutput' height: '#TasksAsInput' box: 'WorkProduct'.
	legend addColor: Color gray text:'#AssociatedGuidelines'.
	legend addLineColor: Color gray text:'Artefact Dependence'.
	legend build.