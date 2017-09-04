metrics
numberOfInputDependences

	<MSEProperty: #NID type: #Number>
	<property: #NID longName: 'Number of input dependences' description:
			'The number of input dependences of the artifacts with the tasks in the process'>
	^self
		lookUpPropertyNamed: #NID
		computedAs: [
			self tasks inject: 0 into: [:sum :task | sum + task numberOfArtifactMandatoryInputs]
			]