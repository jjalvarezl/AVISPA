metrics
activityCouplingFactor
	<MSEProperty: #NCA type: #Number>
	<property: #NCA longName: 'Activity coupling factor per activity' description:
			'The task coupling factor per activity'>
	| NCA |
	(self numberOfContainedActivities = 0)
		ifTrue: [NCA := 0]
		ifFalse: [ NCA := (self numberOfPrecedenceDependencesBetweenActivities / self numberOfContainedActivities) asFloat ].
	^ NCA.