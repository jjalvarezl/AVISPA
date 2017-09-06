visualization
viewRoleBlueprint
	<menuItem: 'Role Blueprint' category: 'Avispa Blueprints'>
	| v |
	v := RTView new. "titled: 'Multipurpose Tasks Pattern'."
	self viewRoleBlueprintOn: v.
	v openTitled:'Role Blueprint'. 
	
	"| b |
	b := RTMondrian new. " "titled: 'Role Blueprint'".
	"b title:'test'.
	self viewRoleBlueprintOn: b.
	b inspect"