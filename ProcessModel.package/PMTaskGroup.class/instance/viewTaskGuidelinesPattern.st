visualization
viewTaskGuidelinesPattern
	<menuItem: 'Task Guidelines Pattern' category: 'Visualize'>
	| view |
	view := RTView new. "titled: 'Task Guidelines Pattern'".
	self viewTaskBlueprintGuidelinesOn: view.
	view open 