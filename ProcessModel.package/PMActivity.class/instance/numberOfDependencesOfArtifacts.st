metrics
numberOfDependencesOfArtifacts
	<MSEProperty: #NDAA type: #Number>
	<property: #NDAA longName: 'Number of dependences of artifacts on present activity' description:
			'The number of dependences of artifacts on present activity'>
	^  self numberOfInputDependencesOfArtifacts + self numberOfOutputDependencesOfArtifacts.