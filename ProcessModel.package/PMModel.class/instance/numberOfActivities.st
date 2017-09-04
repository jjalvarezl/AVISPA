metrics
numberOfActivities

	<MSEProperty: #NAct type: #Number>
	<property: #NAct longName: 'Number of activities' description:
			'The number of activities in a process model'>
	^self
		lookUpPropertyNamed: #NAct
		computedAs: [self activities size]