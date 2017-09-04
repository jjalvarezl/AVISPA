moose finder
mooseFinderIsolatedIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Isolated';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :b :each | 
				each viewIsolatedRolePatternOn: b ]
