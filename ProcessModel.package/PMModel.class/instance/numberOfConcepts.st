metrics
numberOfConcepts

	<MSEProperty: #NC type: #Number>
	<property: #NC longName: 'Number of concepts' description:
			'The number of concepts in a process model'>
	^self
		lookUpPropertyNamed: #NC
		computedAs: [self concepts size]