visualization
viewArtifactResponsibleRolesOn: aView
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
		fillColor:   [: each | ((each responsibleRoles size) = 0) 
			ifTrue: [Color blue] 
			ifFalse: [
				((each responsibleRoles size) >= 4)
					ifTrue: [ Color red ]
					ifFalse: [ Color white ].
			].
		] ; 
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
	legend addText: 'WorkProduct responsible roles'.
	legend addRectanglePolymetricWidth: '#TasksAsOutput' height: '#TasksAsInput' box: 'WorkProduct'.
	legend addColor: Color blue text:'WorkProducts without roles in charge of'.
	legend addColor: Color red text:'WorkProducts with 4 roles or more in charge of'.
	legend addLineColor: Color gray text:'Artefact Dependence'.
	legend build