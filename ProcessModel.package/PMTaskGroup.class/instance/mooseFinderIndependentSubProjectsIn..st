moose finder
mooseFinderIndependentSubProjectsIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Independent Subproject';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :b :each | 
				each viewIndependentSubprojectPatternOn: b ]