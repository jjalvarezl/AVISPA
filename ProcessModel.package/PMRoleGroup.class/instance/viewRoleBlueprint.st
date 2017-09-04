visualization
viewRoleBlueprint
	<menuItem: 'Role Blueprint' category: 'Avispa Blueprints'>
	| b |
	b := RTMondrian new.  "titled: 'Role Blueprint'".
	b title:'test'.
	self viewRoleBlueprintOn: b.
	b inspect