vizualization
viewActivitiesCouplingFactorbyContainedTasksBlueprint
	| v |
	<menuItem: 'Activities Coupling Factor by Contained Tasks' category: 'Avispa Blueprints'>
	v := RTView new @ RTDraggableView.
	self viewActivitiesCouplingFactorByContainedTasksBlueprintOn: v.
	v openTitled:'Activities Coupling Factor by Contained Tasks'.