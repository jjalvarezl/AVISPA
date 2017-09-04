moose finder
mooseFinderArtefactBlueprintIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Artefact Blueprint';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :v :each | 
				each viewArtifactBlueprintOn: v ]