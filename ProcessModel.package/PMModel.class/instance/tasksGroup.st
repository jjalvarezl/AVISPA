navigation
tasksGroup
	<navigation: 'Tasks'>
	^ self privateState 
		attributeAt: #tasksGroup
		ifAbsentPut:
			[(PMTaskGroup
				withAll: (self sort: self tasks)
				withDescription: 'Artifacts from ' , self mooseName)
				myModel: self]