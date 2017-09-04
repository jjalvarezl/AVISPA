vizualization
mooseFinderOverloadedRolesInActivitiesIn: composite
	<moosePresentationOrder: 15>
	composite roassal2
			title: 'Overloaded Roles in Activities blueprint';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new @ RTDraggableView; yourself ];
			painting: [ :b :each | 
				each viewOverloadedRolesInActivitiesBlueprintOn: b ]