navigation
iterationsGroup
	<navigation: 'Iterations'>
	^ self privateState 
		attributeAt: #iterationsGroup
		ifAbsentPut:
			[MooseGroup
				withAll: (self sort: self iterations)
				withDescription: 'Iterations from ' , self mooseName]