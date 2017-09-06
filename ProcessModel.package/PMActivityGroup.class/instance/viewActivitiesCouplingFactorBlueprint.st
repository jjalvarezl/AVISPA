as yet unclassified
viewActivitiesCouplingFactorBlueprint
	| v |
	<menuItem: 'Activities Coupling Factor' category: 'Avispa Blueprints'>
	v := RTView new @ RTDraggableView.
	self viewActivitiesCouplingFactorBlueprintOn: v.
	v openTitled:'Activities Coupling Factor'.