visualization
viewArtifactWastePattern
	<menuItem: 'WorkProduct Waste Pattern' category: 'Avispa Error Patterns'>
	| v |
	v := RTView  new. "titled: ('WorkProduct Waste Pattern')."
	self viewArtifactWastePatternOn: v.
	v openTitled:'WorkProduct Waste Pattern'.