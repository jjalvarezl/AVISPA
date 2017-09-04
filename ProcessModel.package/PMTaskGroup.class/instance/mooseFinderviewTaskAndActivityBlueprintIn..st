moose finder
mooseFinderviewTaskAndActivityBlueprintIn: composite
	<moosePresentationOrder: 40>
	composite roassal2
			title: 'TaskActivityBlueprint';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :v :each | 
				each viewTaskAndActivityBlueprintOn: v ]