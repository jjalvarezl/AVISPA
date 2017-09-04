moose finder
mooseFinderMethodContentVsProccessBlueprintIn: composite
	<moosePresentationOrder: 15>
	composite roassal2
			title: 'Contained Tasks Method Content vs Process';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :v :each | 
				each allContainedTasksGroup viewMethodContentVsProccessOn: v ].