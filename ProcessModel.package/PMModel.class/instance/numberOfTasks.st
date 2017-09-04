metrics
numberOfTasks
	
	<MSEProperty: #NT type: #Number>
	<property: #NT longName: 'Number of tasks' description:
			'The number of tasks in a process model'>
	^self
		lookUpPropertyNamed: #NT
		computedAs: [self tasks size]