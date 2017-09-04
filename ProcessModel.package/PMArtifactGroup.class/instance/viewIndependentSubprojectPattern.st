visualization
viewIndependentSubprojectPattern
	| view |
	<menuItem: 'Independent SubprojectPattern' category: 'Avispa Error Patterns'>
	view := RTView new. "titled: 'Independent  Subproject Pattern: Work Product'"
	self viewIndependentSubprojectPatternOn:  view.
	view openTitled:'Independent  Subproject Pattern: Work Product'. 