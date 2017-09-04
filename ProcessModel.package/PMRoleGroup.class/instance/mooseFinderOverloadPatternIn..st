moose finder
mooseFinderOverloadPatternIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Overloaded Role';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :b :each | 
				each viewOverloadPatternOn: b ]
