moose finder
mooseFinderIndependentSubprojectBlueprintIn: composite
	<moosePresentationOrder: 15>
	composite roassal2
			title: 'Independent Subprojects with Contained Tasks';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :v :each | 
				each allContainedTasksGroup viewIndependentSubprojectPatternOn: v ].