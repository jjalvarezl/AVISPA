moose finder
allContainedRolesGroup
	<navigation: 'All contained roles'>
   | pmRoleGroup |
	pmRoleGroup := PMRoleGroup 
		withAll: self allContainedRoles
		withDescription: 'All contained roles in ', self printString.
	pmRoleGroup myModel: self myModel.
	^ pmRoleGroup.