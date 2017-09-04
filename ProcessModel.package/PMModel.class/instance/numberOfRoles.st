metrics
numberOfRoles

	<MSEProperty: #NR type: #Number>
	<property: #NR longName: 'Number of roles' description:
			'The number of roles in a process model'>
	^self
		lookUpPropertyNamed: #NR
		computedAs: [self roles size]