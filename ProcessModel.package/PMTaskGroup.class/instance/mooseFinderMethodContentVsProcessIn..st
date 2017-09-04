moose finder
mooseFinderMethodContentVsProcessIn: composite
	<moosePresentationOrder: 20>
	composite roassal2
			title: 'Method Content Vs Process';
			"titleIcon: MooseIcons mooseSystemComplexity;"
			initializeView: [ RTView new ];
			painting: [ :b :each | 
				each viewMethodContentVsProccessOn: b ]