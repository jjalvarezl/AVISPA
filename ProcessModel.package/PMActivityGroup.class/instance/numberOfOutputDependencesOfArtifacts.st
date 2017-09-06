metrics
numberOfOutputDependencesOfArtifacts
	<MSEProperty: #NDWPOut type: #Number>
	<property: #NDWPOut longName: 'Number of output dependences of the work products with the activities in the process' description:
			'The number of output dependences of the work products with the activities in the process'>
	| numberOfOutputDependences |
	
	numberOfOutputDependences := 0.
	self do: [ :pmActivity |
		numberOfOutputDependences := numberOfOutputDependences + (pmActivity numberOfOutputDependencesOfArtifacts).
	].
	
	^ numberOfOutputDependences