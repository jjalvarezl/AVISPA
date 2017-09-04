visualization
viewIndependentSubprojectPatternOn: mondrian
	"----------------------"
	"Compute disjoint sets"
	| ds components orderedComponents normalizer view legend |
	view := RTMondrian new.
	view view:mondrian.
	view interaction highlightNeighbors: #outputArtifacts color: Color orange.
	ds := MalDisjointSets new.
	ds nodes: self.
	ds edges: self from: #yourself toAll: #outputArtifacts.
	ds run. 

	components := ds components.
	orderedComponents := Dictionary new.
	components doWithIndex: [:roles :index | 
		roles do: [:role |
			orderedComponents at: role put: index]].

	normalizer := RTNIdentityNormalizer new.
	(1 to: (components size * 10) ) do: [:v | normalizer rtValue: v].

	"----------------------"
	"We display the blueprint"
	view shape rectangle
		borderColor: Color black;
		borderWidth: 1;
		fillColor:[:v | normalizer rtValue: ((orderedComponents at: v) + 10)]; 
		width: [ :each | each numberOfOutputTasks * 10 ];
		height: [ :each | each numberOfInputTasks * 10 ].
		"text: [:each | each presentationName ]."
	view nodes: (self sorted: [:m1 :m2 | m1 numberOfInputTasks < m2 numberOfInputTasks]).
	view shape arrowedLine color: Color gray trans; withShorterDistanceAttachPoint.
   view edges source: self connectFrom: #yourself toAll: #outputArtifacts.
	view layout tree.
	view build. 
	legend := RTLegendBuilder new.
	legend view: view view.
	legend addText: 'WorkProduct without Guidelines'.
	legend addRectanglePolymetricWidth: '#TasksAsOutput' height: '#TasksAsInput' box: 'WorkProduct'.
	legend addLineColor: Color gray text:'Artefact Dependence'.
	legend addText: 'Each color means an independent subporject from the workproduct viewpoint'.
	legend build