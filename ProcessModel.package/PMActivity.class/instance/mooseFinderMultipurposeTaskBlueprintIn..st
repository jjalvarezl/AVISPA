moose finder
mooseFinderMultipurposeTaskBlueprintIn: composite
	<moosePresentationOrder: 13>
	composite roassal2
			title: 'Multipurpose Contained Tasks';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :v :each | 
				each allContainedTasksGroup viewTaskWarningBlueprintOn: v ].