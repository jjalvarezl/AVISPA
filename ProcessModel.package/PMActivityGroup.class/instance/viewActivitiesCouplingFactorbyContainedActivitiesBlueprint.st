vizualization
viewActivitiesCouplingFactorbyContainedActivitiesBlueprint
	| v |
	<menuItem: 'Activities Coupling Factor by Contained Activities' category: 'Avispa Blueprints'>
	v := RTView new @ RTDraggableView.
	self viewActivitiesCouplingFactorByContainedActivitiesBlueprintOn: v.
	v openTitled:'Activities Coupling Factor by Contained Activities'.