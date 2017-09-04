moose finder
mooseFinderRoleBlueprintIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'RoleBlueprint';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :b :each | 
				each viewRoleBlueprintOn: b ]
