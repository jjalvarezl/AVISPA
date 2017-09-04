visualization
viewArtifactGuidanceBlueprint
	<menuItem: 'WorkProduct Guidance Blueprint' category: 'Avispa Error Patterns'>

	| v |
	v := RTView new. " titled: 'WorkProduct Guidance Blueprint'."
	self viewArtifactBlueprintGuidanceOn: v.
	v openTitled:'WorkProduct Guidance Blueprint'.