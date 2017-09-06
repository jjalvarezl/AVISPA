metrics
numberOfPrecedenceDependencesBetweenActivities
	<MSEProperty: #NDA type: #Number>
	<property: #NDA longName: 'Number of precedence dependences between activities' description:
			'Number of precedence dependences between activities'>
	| numberOfDependences |
	numberOfDependences := 0.
	self do: [:pmArtifact| numberOfDependences := numberOfDependences + (pmArtifact predecessors size)].
	
	^ numberOfDependences.