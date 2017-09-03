metrics
numberOfOutputDependences

	<MSEProperty: #NOD type: #Number>
	<property: #NOD longName: 'Number of output dependences' description:
			'The number of output dependences of the artifacts with the tasks in the process'>
	^self
		lookUpPropertyNamed: #NOD
		computedAs: [
			self tasks inject: 0 into: [:sum :task | sum + task numberOfArtifactOutputs]
			]