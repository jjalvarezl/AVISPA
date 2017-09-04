navigation
artifactsGroup
	<navigation: 'Artifacts'>
	^ self privateState 
		attributeAt: #artifactsGroup
		ifAbsentPut:
			[(PMArtifactGroup
				withAll: (self sort: self artifacts)
				withDescription: 'Artifacts from ' , self mooseName)
				myModel: self ]