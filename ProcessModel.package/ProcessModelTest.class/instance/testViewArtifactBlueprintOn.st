test blueprint
testViewArtifactBlueprintOn
	| importer model v |
	
	importer := ProcessModelImporter new.
	model := importer importFromStream: self modelExampleTasks readStream.
	v := RTView new.
	model artifactsGroup viewArtifactBlueprintOn: v.
	"There are at least 2 elements. But there is also the legend"
	self assert: v numberOfElements > 2