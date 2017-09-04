moose finder
mooseFinderTaskBlueprintGuidelinesIn: composite
	<moosePresentationOrder: 14>
	composite roassal2
			title: 'Contained Tasks Guidelines';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :v :each | 
				each allContainedTasksGroup viewTaskBlueprintGuidelinesOn: v ].