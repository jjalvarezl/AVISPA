visualization
viewTaskAndActivityBlueprint
	<menuItem: 'Task And Activity Blueprint' category: 'Avispa Blueprints'>
	| v |
	v := RTView new.
	self viewTaskAndActivityBlueprintOn: v.
	^ v