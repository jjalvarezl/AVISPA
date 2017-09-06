metrics
numberOfInputDependencesOfArtifacts
	<MSEProperty: #NDWPIn type: #Number>
	<property: #NDWPIn longName: 'Number of input dependences of the work products with the activities in the process' description:
			'The number of input dependences of the work products with the activities in the process'>
	| numberOfInputDependences |
	
	numberOfInputDependences := 0.
	self do: [ :pmActivity |
		numberOfInputDependences := numberOfInputDependences + (pmActivity numberOfInputDependencesOfArtifacts).
	].
	
	^ numberOfInputDependences