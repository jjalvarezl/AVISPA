navigation
activitiesGroup
	<navigation: 'Activities'>
	^ self privateState 
		attributeAt: #activitiesGroup
		ifAbsentPut:
			[MooseGroup
				withAll: (self sort: self activities)
				withDescription: 'Activities from ' , self mooseName]