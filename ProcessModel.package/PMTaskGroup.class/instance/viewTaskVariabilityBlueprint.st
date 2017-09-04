visualization
viewTaskVariabilityBlueprint
	<menuItem: 'Task Variability Blueprint' category: 'Avispa Blueprints'>
	| view |
	view := RTView new. "title: 'Task Variability Blueprint'"
	self viewTaskVariabilityBlueprintOn: view.
	view openTitled:'Task Variability Blueprint'. 