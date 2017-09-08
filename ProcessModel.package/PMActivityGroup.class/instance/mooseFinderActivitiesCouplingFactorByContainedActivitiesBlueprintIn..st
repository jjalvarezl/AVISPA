vizualization
mooseFinderActivitiesCouplingFactorByContainedActivitiesBlueprintIn: composite
	<moosePresentationOrder: 22>
	composite roassal2
			title: 'Activities Coupling Blueprint by Contained Activities';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new @ RTDraggableView; yourself ];
			painting: [ :b :each | 
				each viewActivitiesCouplingFactorByContainedActivitiesBlueprintOn: b ]