moose finder
mooseFinderRoleWithoutGuidlinesIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Roles withoutGuidelines';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :b :each | 
				each viewRoleBlueprintGuidelinesOn: b ]
