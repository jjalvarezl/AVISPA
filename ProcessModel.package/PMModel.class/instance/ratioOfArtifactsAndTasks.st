metrics
ratioOfArtifactsAndTasks

	<MSEProperty: #RAT type: #Number>
	<property: #RAT longName: 'Ratio of artifacts and tasks' description:
			'The ratio of artifacts and tasks. Average of the artifacts and the tasks of the process model'>
	^self
		lookUpPropertyNamed: #RAT
		computedAs: [
			self numberOfTasks isZero
				ifTrue: [ -1 ]
				ifFalse: 
					[ self truncate: (self numberOfDependencesBetweenArtifactsAndTasks / self numberOfTasks)]
			]