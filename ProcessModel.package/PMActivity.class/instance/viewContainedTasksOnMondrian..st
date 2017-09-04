moose finder
viewContainedTasksOnMondrian: aMondrian


	aMondrian shape box width: [ :aTask | aTask numberOfArtifactOutputs * 15 ]; height: [ :aTask | aTask  numberOfArtifactMandatoryInputs * 15 ].
	aMondrian nodes: self allContainedTasks.
	self allContainedTasks size > 1 ifTrue: [
		aMondrian normalizer objects: self allContainedTasks; normalizeColor: #desviationOutputArtifacts ].
	aMondrian layout grid.
