moose finder
mooseFinderArtefactWithoutRolesIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Artefact Without Roles';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :b :each | 
				each viewArtifactWithoutRoles: b ]