vizualization
viewActivitiesCouplingFactorByContainedActivitiesBlueprintOn: view
	| b legend  |
	b := RTMondrian new.
	b view: view.
	"No funciona la siguiente linea, no se muestran los predecesores."
	b interaction highlightNeighbors: #predecessors color: Color orange.
	"b interaction highlightNeighbour: #superActivities color: Color blue."
	b shape rectangle
		borderWidth: 1;
		borderColor: Color black;
		"fillColor:   [ :pmActivity | pmActivity taskCouplingFactor > 3 ifTrue: [Color green] ifFalse: [Color white]] ; "
		"borderColor: [:each2| each2 use = false ifTrue: [Color red]ifFalse: [Color green]];"
			"linearFillColor: #numberOfConcepts within:coll ;"
			width: [ :pmActivity | pmActivity numberOfPrecedenceDependencesBetweenActivities * 10 ];
			height: [ :pmActivity | pmActivity numberOfDependencesOfArtifacts * 5 ].
	"view shape rectangle
		borderWidth: 1;
		linearFillColor: #numberOfRoles within: inuse ;
	     width: [:each | each numberOfArtifactOutputs * 10];
	     height: [:each | each numberOfArtifactMandatoryInputs * 10]."
	
	"b
		nodes: self
		forEach: [ :anActivity | 
			b shape box
				width: [ :aTask | aTask numberOfArtifactOutputs * 5 ];
				height: [ :aTask | aTask numberOfArtifactMandatoryInputs * 5 ].
			b nodes: anActivity allContainedTasks.
			b layout grid.

			anActivity viewContainedTasksOnMondrian: view. ]."
	"b normalizer
		objects: (self flatCollect: #allContainedTasks);
		normalizeColor: #taskCouplingFactor."

	"view shape arrowedLine color: Color gray trans; withShorterDistanceAttachPoint."
	"view edges source: coll connectFrom: #yourself toAll: #followingTasks."
	b nodes: self.
	b normalizer normalizeColor: #activityCouplingFactor using: (Array with: Color black with: Color green) using: [ :vv | (vv + 1) ln * 5 ].
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
	legend addText: '*****Coupling between activities per activity*****'.
	legend addText: 'Each big box is an artifact'.
	"legend addColor: Color red text: 'Tasks not used Task in use'.
	legend addColor: Color green text: 'Tasks in use and Tasks'.
	legend addLineColor: Color gray text:'Task Artefact Flow'."
	legend addText: 'Total number of activities: ' , self size asString.
	legend addText: 'Relations between activities:'.
	legend addLineColor: Color blue text:'Predecessors'.
	legend addLineColor: Color red text:'Super Activity'.
	legend addText: ''.
	legend addRectanglePolymetricWidth: '#precedenceDependencesBetweenActivities' height: '#dependencesOfArtifacts' box: 'Activity'.
	legend addColorFadingFrom: Color black to: Color green text: 'activity coupling factor by contained activities by each activity (black is the lowest value, red is the highest)'.
	
	legend build