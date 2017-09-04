moose finder
mooseFinderTaskWarningBlueprintIn: composite
	<moosePresentationOrder: 15>
	composite roassal2
			title: 'Contained Tasks Warning';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :v :each | 
				each allContainedTasksGroup viewTaskWarningBlueprintOn: v ].