visualization
viewTaskBlueprintCluster
	<menuItem: 'Task Blueprint Test' category: 'Avispa Tests'>
	| view |
	view := RTView new."titled: 'Task Blueprint'"
	self viewTaskBlueprintClusterOn: view.
	view openTitled:'Task Blueprint Test'.