buttons
legendButtonOn: view

	| image |
	view addMenu: 'Legend...' callBack: [ :stack |
		
		image := ROElement new.
		image + (ROImage new form: [ :k | self taskBlueprintLegend ]).
		image @ RODraggable.
		view stack add: image.
		
	].