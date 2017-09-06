metrics
taskCouplingFactor
	<MSEProperty: #NTC type: #Number>
	<property: #NTC longName: 'Task coupling factor per activity' description:
			'The task coupling factor per activity'>
	^ (self numberOfFollowingDependencesBetweenTasks / self numberOfContainedTasks) asFloat.