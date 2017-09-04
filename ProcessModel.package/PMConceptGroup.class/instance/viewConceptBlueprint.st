visualization
viewConceptBlueprint
	| v |
	<menuItem: 'Concepts Blueprint' category: 'Avispa Blueprints'>
	v := RTView new "Menu titled: 'Concept Blueprint'".
	self viewConceptBlueprintOn: v.
	v openTitled:'Concepts Blueprint'.