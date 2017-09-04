navigation
conceptsGroup
	<navigation: 'Concepts'>
	^ self privateState 
		attributeAt: #conceptsGroup
		ifAbsentPut:
			[(PMConceptGroup
				withAll: (self sort: self concepts)
				withDescription: 'Concepts from ' , self mooseName)
				myModel: self]