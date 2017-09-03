moose finder
mooseFinderTaskGuidelinesPatternIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Task without Guidelines';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :b :each | 
				each viewTaskBlueprintGuidelinesOn: b ]