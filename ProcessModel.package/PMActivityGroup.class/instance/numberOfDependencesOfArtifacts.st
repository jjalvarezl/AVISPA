metrics
numberOfDependencesOfArtifacts
	<MSEProperty: #NDWP type: #Number>
	<property: #NDWP longName: 'Number of dependences of the work products with the activities in the process' description:
			'The number of dependences of the work products with the activities in the process'>
	^ self numberOfInputDependencesOfArtifacts + self numberOfOutputDependencesOfArtifacts