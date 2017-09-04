moose finder
mooseFinderTaskBlueprintIn: composite
	<moosePresentationOrder: 10>
	composite roassal2
			title: 'Contained Tasks';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :v :each | 
				each allContainedTasksGroup viewTaskBlueprintOn: v ].