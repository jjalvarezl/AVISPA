metrics
numberOfArtifacts

	<MSEProperty: #NA type: #Number>
	<property: #NA longName: 'Number of artifacts' description:
			'The number of artifacts in a process model'>
	^self
		lookUpPropertyNamed: #NA
		computedAs: [self artifacts size]