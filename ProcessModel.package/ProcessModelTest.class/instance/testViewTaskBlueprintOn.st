test blueprint
testViewTaskBlueprintOn
	| importer model v |
	
	importer := ProcessModelImporter new.
	model := importer importFromStream: self modelExampleTasks readStream.
	v := RTView new.
	model tasksGroup viewTaskBlueprintOn: v.
	self assert: v numberOfElements >= 0