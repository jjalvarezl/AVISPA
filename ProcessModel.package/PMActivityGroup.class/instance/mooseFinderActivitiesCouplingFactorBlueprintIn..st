as yet unclassified
mooseFinderActivitiesCouplingFactorBlueprintIn: composite
	<moosePresentationOrder: 21>
	composite roassal2
			title: 'Activities Coupling Blueprint';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new @ RTDraggableView; yourself ];
			painting: [ :b :each | 
				each viewActivitiesCouplingFactorBlueprintOn: b ]