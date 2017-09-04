metrics
ratioOfRolesAndTasks

	<MSEProperty: #RRT type: #Number>
	<property: #RRT longName: 'Ratio of roles and tasks' description:
			'The ratio of roles and tasks in the process model'>
	^self
		lookUpPropertyNamed: #RRT
		computedAs: [
			self numberOfTasks isZero
				ifTrue: [ -1 ]
				ifFalse: 
					[ self truncate: (self numberOfRoles / self numberOfTasks) ]
			]