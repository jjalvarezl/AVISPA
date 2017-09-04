visualization
viewTaskBlueprint
	<menuItem: 'Task Blueprint' category: 'Avispa Blueprints'>
	| view |
	view := RTView new.
	self viewTaskBlueprintOn: view.
	view openTitled:'Task Blueprint' 