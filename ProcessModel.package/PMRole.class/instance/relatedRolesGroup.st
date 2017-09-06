navigation
relatedRolesGroup
	<navigation: 'Related roles'>
	| pmRoleGroup |
	pmRoleGroup := PMRoleGroup 
		withAll: self relatedRoles .
	pmRoleGroup myModel: self myModel.
	
	^ pmRoleGroup