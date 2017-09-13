vizualization
viewOverloadedRolesInActivitiesBlueprintOn: view
	| b legend sum average sumstandard standardsigma overloadedRoles |
	overloadedRoles := 0.
	b := RTMondrian new.
	b view: view.
	"No funciona la siguiente linea, no se muestran los predecesores."
	b interaction highlightNeighbors: #predecessors color: Color orange.
	"b interaction highlightNeighbour: #superActivities color: Color blue."
	b shape rectangle
		borderWidth: 1;
		"borderColor: [:each2| each2 use = false ifTrue: [Color red]ifFalse: [Color green]];"
			"linearFillColor: #numberOfConcepts within:coll ;"
			width: [ :each | 10 ];
		height: [ :each | 10 ].
	"view shape rectangle
		borderWidth: 1;
		linearFillColor: #numberOfRoles within: inuse ;
	     width: [:each | each numberOfArtifactOutputs * 10];
	     height: [:each | each numberOfArtifactMandatoryInputs * 10].	
	"
	b
		nodes: self
		forEach: [ :anActivity | 
			sum := 0.
			anActivity myModel roles do: [ :each | sum := sum + each numberOfTasks ].
			average := sum / (anActivity allContainedRoles size).
			sumstandard := 0.
			anActivity myModel roles do:[:each | sumstandard:= sumstandard + ((average - (each numberOfTasks )) squared)].
	      standardsigma  := ((sumstandard/(anActivity allContainedRoles size))) sqrt.
			b shape box
				width: [ :aRole | aRole numberOfAssociatedArtifacts ];
				height: [ :aRole | aRole numberOfTasks ];
				fillColor: [ :aRole | 
					((aRole numberOfTasks) > standardsigma)
						ifTrue: [ 
							overloadedRoles := overloadedRoles +1. 
							Color red
						]
						ifFalse: [ Color white ] ].
			b nodes: anActivity allContainedRoles.
			b layout grid

			"anActivity viewContainedTasksOnMondrian: view." ].
	b normalizer objects: (self flatCollect: #allContainedRoles).
	"normalizeColor: #desviationOutputArtifacts."

	"view shape arrowedLine color: Color gray trans; withShorterDistanceAttachPoint."
	"view edges source: coll connectFrom: #yourself toAll: #followingTasks."
	b shape arrowedLine color: Color blue.
	b edges connectFromAll: #predecessors.
	b layout tree.
	b build.
	b shape arrowedLine color: Color red.
	b edges connectFromAll: #superActivities.
	b layout tree.
	b build.
	legend := RTLegendBuilder new.
	legend view: b view.
	legend addText: '*****Overloaded Roles by activities*****'.
	legend
		addText: 'Each big box is an artifact containing each respective tasks (contained ones)'.
	"legend addColor: Color red text: 'Tasks not used Task in use'.
	legend addColor: Color green text: 'Tasks in use and Tasks'.
	legend addLineColor: Color gray text:'Task Artefact Flow'."
	legend addText: 'Total number of activities: ' , self size asString.
	legend addText: 'Relations between activities:'.
	legend addLineColor: Color blue text: 'Predecessors'.
	legend addLineColor: Color red text: 'Super Activity'.
	legend addText: ''.
	legend addText: '*****Role contained in an activity*****'.
	legend addText: 'Each box contained in each activity box is a role'.
	legend addRectanglePolymetricWidth: 'Associated Artifacts' height: 'Tasks' box: 'Role'.
	legend addText: 'If task box is red colored, then role is overloaded, otherwise not'.
	legend addText: 'Total overloaded role matches by each activity: ' , overloadedRoles asString.
	legend build