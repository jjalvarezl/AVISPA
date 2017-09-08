metrics
numberOfPrecedenceDependencesBetweenActivities
	<MSEProperty: #NDA type: #Number>
	<property: #NDA longName: 'Number of predecesor dependences between contained artifacts' description:
			'The number of predecesor dependences between contained artifacts'>
	| numberOfPrecedenceDependencesBetweenActivities |
	numberOfPrecedenceDependencesBetweenActivities := 0.
	self allContainedActivities do:[:pmActivity | 
		numberOfPrecedenceDependencesBetweenActivities := numberOfPrecedenceDependencesBetweenActivities + (pmActivity predecessors size).
	].
			
	^ numberOfPrecedenceDependencesBetweenActivities