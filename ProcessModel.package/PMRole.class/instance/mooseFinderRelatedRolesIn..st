navigation
mooseFinderRelatedRolesIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Related Roles';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :b :each | 
				each relatedRolesGroup viewRoleBlueprintOn: b ]