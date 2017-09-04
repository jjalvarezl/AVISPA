navigation
rolesGroup
	<navigation: 'Roles'>
	^ self privateState 
		attributeAt: #rolesGroup
		ifAbsentPut:
			[(PMRoleGroup
				withAll: (self sort: self roles)
				withDescription: 'Roles from ' , self mooseName)
				myModel: self]