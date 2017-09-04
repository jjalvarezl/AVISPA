visualization
viewOutputTaskDistributionBlueprint
	<menuItem: 'Number of Outputs by Task Distribution Blueprint' category: 'Visualize'>
	| view |
	view := RTView new.  "titled: 'Number of Outputs by Task Distribution Blueprint'"
	self viewOutputTaskDistributionBlueprintOn: view.
	view openTitled:'Number of Outputs by Task Distribution Blueprint'