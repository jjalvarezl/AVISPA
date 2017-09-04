moose finder
mooseFinderRoleBlueprintIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Contained Overloaded Roles';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :v :each | 
				each allContainedRolesGroup viewOverloadPatternOn: v ].