metrics
activityCouplingFactor
	<MSEProperty: #NCA type: #Number>
	<property: #NCA longName: 'Activity coupling in the process model' description:
			'Activity coupling in the process model'>
	^  (self numberOfPrecedenceDependencesBetweenActivities / self numberOfActivities) asFloat.