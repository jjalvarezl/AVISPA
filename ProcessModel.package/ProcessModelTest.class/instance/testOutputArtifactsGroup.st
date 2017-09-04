test blueprint
testOutputArtifactsGroup
	| importer model v |
	
	importer := ProcessModelImporter new.
	model := importer importFromStream: self modelExampleTasks readStream.
	self assert: model artifactsGroup myModel equals: model.
	self assert: model artifactsGroup first myModel equals: model.
	self assert: model artifactsGroup first outputArtifactsGroup myModel equals: model.