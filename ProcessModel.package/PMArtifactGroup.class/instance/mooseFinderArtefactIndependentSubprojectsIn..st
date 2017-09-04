moose finder
mooseFinderArtefactIndependentSubprojectsIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Independent Subprojects';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :b :each | 
				each viewIndependentSubprojectPatternOn: b ]