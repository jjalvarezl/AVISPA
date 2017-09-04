metrics
numberOfDependencesBetweenArtifactsAndTasks

	<MSEProperty: #NDBAT type: #Number>
	<property: #NDBAT longName: 'Number of dependences between artifacts and tasks' description:
			'The number of dependences between artifacts and tasks in the process'>
	^self
		lookUpPropertyNamed: #NDBAT
		computedAs: [
			self numberOfInputDependences + self numberOfOutputDependences
			]