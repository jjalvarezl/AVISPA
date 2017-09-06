visualization
viewTaskAndActivityBlueprint
	<menuItem: 'Task And Activity Blueprint' category: 'Avispa Blueprints'>
	| v |
	v := RTView new. "titled: 'Multipurpose Tasks Pattern'."
	self viewTaskAndActivityBlueprintOn: v.
	v openTitled:'Task And Activity Blueprint'. 