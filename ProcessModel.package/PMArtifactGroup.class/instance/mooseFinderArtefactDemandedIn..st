moose finder
mooseFinderArtefactDemandedIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Demanded Artefacts';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :b :each | 
				each viewDemandedWorkProductPatternOn: b ]