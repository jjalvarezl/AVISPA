moose finder
mooseFinderArtefactWithoutRolesIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Artefact Responsible Roles';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :b :each | 
				each viewArtifactResponsibleRolesOn: b ]