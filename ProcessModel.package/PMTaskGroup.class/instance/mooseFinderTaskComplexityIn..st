moose finder
mooseFinderTaskComplexityIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Task Complexity'; 
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :b :each | 
				each viewTaskWarningBlueprintOn: b ]