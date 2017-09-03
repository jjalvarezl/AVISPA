vizualization
viewTasksInActivitiesBlueprint
	| v |
	<menuItem: 'Tasks in Activities Blueprint' category: 'Avispa Blueprints'>
	v := RTView new @ RTDraggableView.
	self viewTasksInActivitiesBlueprintOn: v.
	v openTitled:'Tasks in Activities Blueprint'.