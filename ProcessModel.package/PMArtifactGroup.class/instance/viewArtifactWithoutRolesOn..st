visualization
viewArtifactWithoutRolesOn: aView
		"----------------------"
	"We display the blueprint"
	| coll mondrian legend |
	mondrian := RTMondrian new.
	mondrian view: aView.
	mondrian interaction highlightNeighbors: #outputArtifacts color: Color orange.
	coll :=  (self sorted: [:m1 :m2 | m1 numberOfInputTasks < m2 numberOfInputTasks]) asArray.
	mondrian shape rectangle
		borderColor: Color black;
		borderWidth: 1;
		fillColor:   [: each | each numberOfRoles = 0 ifTrue: [Color red] ifFalse: [Color white]] ; 
		width: [ :each | each numberOfOutputTasks * 10 ];
		height: [ :each | each numberOfInputTasks * 10 ].
		"text: [:each | each presentationName ]."
	mondrian nodes: coll.
	mondrian shape arrowedLine color: Color gray trans; withShorterDistanceAttachPoint.
   mondrian edges source: self connectFrom: #yourself toAll: #outputArtifacts.
	mondrian layout tree.
	mondrian build.
	legend := RTLegendBuilder new.
	legend view: mondrian view.
	legend addText: 'WorkProduct without Guidelines'.
	legend addRectanglePolymetricWidth: '#TasksAsOutput' height: '#TasksAsInput' box: 'WorkProduct'.
	legend addColor: Color red text:'WorkProducts without Roles in charge of'.
	legend addLineColor: Color gray text:'Artefact Dependence'.
	legend build