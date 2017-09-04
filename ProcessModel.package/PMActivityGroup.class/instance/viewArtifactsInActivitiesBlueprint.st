vizualization
viewArtifactsInActivitiesBlueprint
	| v |
	<menuItem: 'Artifacts in Activities Blueprint' category: 'Avispa Blueprints'>
	v := RTView new @ RTDraggableView.
	self viewArtifactsInActivitiesBlueprintOn: v.
	v openTitled:'Artifacts in Activities Blueprint'.