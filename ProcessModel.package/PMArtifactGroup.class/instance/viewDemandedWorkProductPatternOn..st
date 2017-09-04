visualization
viewDemandedWorkProductPatternOn: aView
	"----------------------"
	"We display the blueprint"
	
	|sum average sumstandard standardsigma mondrian legend |.
	mondrian:= RTMondrian new.
	mondrian view: aView.
	mondrian interaction highlightNeighbour: #outputArtifacts color: Color orange.
	sum := 0.
	 self myModel artifacts do:[:each| sum:= sum + each numberOfInputTasks ].
	average:= sum/(self size).
	sumstandard:=0.
	self myModel roles do:[:each | sumstandard:= sumstandard + ((average - (each numberOfTasks )) squared)].
	standardsigma  := ((sumstandard/(self size))) sqrt .
	
	mondrian shape rectangle
		borderColor: Color black;
		borderWidth: 1;
		fillColor:[:each | ((each  numberOfInputTasks  ) >  standardsigma) ifTrue: [Color red] ifFalse: [Color white]];
		width: [ :each | each numberOfOutputTasks * 10 ];
		height: [ :each | each numberOfInputTasks * 10 ].
		"text: [:each | each presentationName ]."
	mondrian nodes: (self sorted: [:m1 :m2 | m1 numberOfInputTasks < m2 numberOfInputTasks]).
	mondrian shape arrowedLine color: Color gray trans; withShorterDistanceAttachPoint.
   mondrian edges source: self connectFrom: #yourself toAll: #outputArtifacts.
	mondrian treeLayout.
	mondrian build.
	legend := RTLegendBuilder new.
	legend view: mondrian view.
	legend addText: 'WorkProduct without Guidelines'.
	legend addRectanglePolymetricWidth: '#TasksAsOutput' height: '#TasksAsInput' box: 'WorkProduct'.
	legend addColor: Color red text:'WorkProducts Required by too Tasks'.
	legend addLineColor: Color gray text:'Artefact Dependence'.
	legend build