moose finder
mooseFinderArtifactBlueprintIn: composite
	<moosePresentationOrder: 40>
	composite roassal2
			title: 'Contained Artifacts';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :v :each | 
				each allContainedArtifactsGroup viewArtifactBlueprintOn: v ].