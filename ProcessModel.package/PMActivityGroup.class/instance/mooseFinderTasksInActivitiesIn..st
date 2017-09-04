vizualization
mooseFinderTasksInActivitiesIn: composite
	<moosePresentationOrder: 10>
	composite roassal2
			title: 'Tasks in Activities blueprint';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new @ RTDraggableView; yourself ];
			painting: [ :b :each | 
				each viewTasksInActivitiesBlueprintOn: b ]