visualization
viewIndependentSubprojectPattern
	<menuItem: 'Independent Subproject Pattern' category: 'Avispa Error Patterns'>
	| view |
	view := RTView new."   titled: 'Independent Subproject Pattern'."
	self viewIndependentSubprojectPatternOn: view.
	view openTitled:'Independent Subproject Pattern'