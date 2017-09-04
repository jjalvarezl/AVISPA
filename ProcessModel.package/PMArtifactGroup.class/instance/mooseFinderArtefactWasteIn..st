moose finder
mooseFinderArtefactWasteIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Artefact Waste';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :b :each | 
				each viewArtifactWastePatternOn: b ]