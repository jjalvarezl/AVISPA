visualization
viewTaskWarningBlueprint
	<menuItem: 'Multipurpose Tasks Pattern' category: 'Avispa Error Patterns'>
	| view |
	view := RTView new. "titled: 'Multipurpose Tasks Pattern'."
	self viewTaskWarningBlueprintOn: view.
	view openTitled:'Multipurpose Tasks Pattern'. 