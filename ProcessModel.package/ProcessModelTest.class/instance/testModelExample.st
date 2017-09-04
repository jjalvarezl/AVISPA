tests
testModelExample
	"
	self debug: #testModelExample
	"
	| importer model task role artifact artifactTask template activity guidelines |
	
	"Initialization of the model"
	importer := ProcessModelImporter new.
	model := importer importFromStream: self modelExample readStream.

	self assert: ( model entities allSatisfy: [:ent | ent mooseModel == model]).
	self assert: (model entities includesAllOf: model roles).
	self assert: (model entities includesAllOf: model artifacts).
	self assert: (model entities includesAllOf: model tasks).
	
	"self assert:(model roles allSatisfy: [: eachRole | eachRole myModel = model]).
	self assert:(model artifacts allSatisfy: [: eachArtifact | eachArtifact myModel = model]).
	self assert:(model tasks allSatisfy: [: eachTask | eachTask myModel = model]).
"
	"Model asserts"
	self assert: (model notNil).
	self assert: (model isKindOf: PMModel).
	
	"Tasks asserts"
	self assert: (model tasks notNil).
	self assert: (model tasks size = 1).
	task := model tasks first.
	self assert: (task isKindOf: PMTask).
	self assert: (task mooseName = 'analizarCU').
	self assert: (task roles first mooseName = 'Analista').
	
	"role asserts"
	role := model roles first.
	self assert: (role isKindOf: PMRole).
	self assert: (role mooseName ='Analista').
	
	"artifacts asserts"
	artifact := model artifacts first.
	self assert: (artifact isKindOf: PMArtifact).
	self assert: (artifact mooseName = 'Caso de Uso').
	
	"artifacts associated to tasks asserts"
	self assert: (task hasArtifactOutputs).
	self assert: (task artifactOutputs size = 1).
	artifactTask := task artifactOutputs first.
	self assert: (artifact == artifactTask).
	
	"roless associated to tasks asserts
	self assert: (task hasRoles).
	self assert: (task roles size = 1).
	roleTask := task roles first.
	self assert: (artifact == artifactTask)."

	self assert: (task hasArtifactMandatoryInputs).
	self assert: (task artifactMandatoryInputs size = 1).
	
	
	"template asserts"
	template := model templates first.
	self assert: (template isKindOf: PMTemplate).
	self assert: (template mooseName = 'Template Caso de Uso').
	
	"guideline asserts"
	guidelines := model guidelines.
	self assert: (guidelines allSatisfy: [ :guide | guide isKindOf: PMGuideline ]).
	self assert: (guidelines detect: [ :guide | guide mooseName = 'Template Caso de Uso' ]) notNil.
	self assert: (guidelines detect: [ :guide | guide mooseName = 'Guia de Analisis de CU' ]) notNil.

	
	"activities asserts"
	activity := model activities first.
	self assert: (activity isKindOf: PMActivity).
	self assert: (activity mooseName = 'Identificar Actores y CU').
	self deny: (activity hasPredecessor).	
	"self assert: (activity predecessors first == nil).	"
			
	"taskDescriptor asserts"
	"taskDescriptor := model taskDescriptors first.
	self assert: (taskDescriptor isKindOf: PMTaskDescriptor).
	self assert: (taskDescriptor elementName = 'Especificar CAso de USo').
	taskTaskDescriptor := taskDescriptor tasks first.
	self assert: (task == taskTaskDescriptor).
	"
	