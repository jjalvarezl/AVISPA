vizualization
mooseFinderActivitiesCouplingFactorByContainedTasksBlueprintIn: composite
	<moosePresentationOrder: 21>
	composite roassal2
			title: 'Activities Coupling Blueprint by Contained Tasks';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new @ RTDraggableView; yourself ];
			painting: [ :b :each | 
				each viewActivitiesCouplingFactorByContainedTasksBlueprintOn: b ]