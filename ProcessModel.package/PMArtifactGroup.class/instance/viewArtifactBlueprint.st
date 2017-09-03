visualization
viewArtifactBlueprint
	| v |
	<menuItem: 'WorkProduct Blueprint' category: 'Avispa Blueprints'>
	v := RTView new "titled: 'WorkProduct Blueprint'".
	self viewArtifactBlueprintOn: v.
	v openTitled:'WorkProduct Blueprint'.