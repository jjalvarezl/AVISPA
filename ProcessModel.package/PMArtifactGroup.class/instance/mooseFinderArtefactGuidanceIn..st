moose finder
mooseFinderArtefactGuidanceIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Artefact Guidance';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :b :each | 
				each viewArtifactBlueprintGuidanceOn: b ]