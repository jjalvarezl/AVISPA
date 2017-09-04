moose finder
mooseFinderTaskBlueprintClusterIn: composite
	<moosePresentationOrder: 15>
	composite roassal2
			title: 'Task Blueprint Cluster with Contained Tasks';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :v :each | 
				each allContainedTasksGroup viewTaskBlueprintClusterOn: v ].