vizualization
viewOverloadedRolesInActivitiesBlueprint
	| v |
	<menuItem: 'Overloaded Roles in Activities Blueprint' category: 'Avispa Blueprints'>
	v := RTView new @ RTDraggableView.
	self viewOverloadedRolesInActivitiesBlueprintOn: v.
	v openTitled:'Overloaded Roles in Activities Blueprint'.