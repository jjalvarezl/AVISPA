vizualization
mooseFinderArtifactsInActivitiesIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Artifacts in Activities blueprint';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new @ RTDraggableView; yourself ];
			painting: [ :b :each | 
				each viewArtifactsInActivitiesBlueprintOn: b ]