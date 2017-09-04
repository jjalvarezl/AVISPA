navigation
mooseFinderTasks: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Following Tasks';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :b :each | 
				each followingTasksGroup viewTaskBlueprintOn: b ]