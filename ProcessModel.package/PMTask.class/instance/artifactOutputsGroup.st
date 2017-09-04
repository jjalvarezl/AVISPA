navigation
artifactOutputsGroup
	<navigation: 'Artifact outputs'>
	^ self privateState 
		attributeAt: #artifactOutputsGroup
		ifAbsentPut:
			[MooseGroup
				withAll: self artifactOutputs
				withDescription: 'Artifact output from task ' , self mooseName]