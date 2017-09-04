visualization
viewInputTaskDistributionBlueprint
	<menuItem: 'Number of Inputs by Task Distribution Blueprint' category: 'Visualize'>
	| view |
	view := RTView new.
	self viewInputTaskDistributionBlueprintOn: view.
	view openTitled:'Number of Inputs by Task Distribution Blueprint'. 