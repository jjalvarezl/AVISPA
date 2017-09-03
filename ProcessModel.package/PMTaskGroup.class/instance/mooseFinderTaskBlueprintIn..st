moose finder
mooseFinderTaskBlueprintIn: composite
	<moosePresentationOrder: 40>
	composite roassal2
			title: 'TaskBlueprint';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :b :each | 
				each viewTaskBlueprintOn: b ]