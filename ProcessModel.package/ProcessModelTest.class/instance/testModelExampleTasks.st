tests
testModelExampleTasks
	"
	self debug: #testModelExampleTasks
	"

	| importer model task role artifact artifactTask template activity nexttask |
	"Initialization of the model"
	importer := ProcessModelImporter new.
	model := importer importFromStream: self modelExampleTasks readStream.

	"Model asserts"
	self assert: model notNil.
	self assert: (model isKindOf: PMModel).

	"Tasks asserts"
	self assert: model tasks notNil.
	self assert: model tasks size equals: 2.
	task := model tasks first.
	self assert: (task isKindOf: PMTask).
	self assert: task mooseName equals: 'analizarCU'.
	self assert: task artifactOutputs size equals: 1.
	nexttask := model tasks second.
	self assert: nexttask artifactMandatoryInputs first == task artifactOutputs first.
	self assert: task roles first mooseName equals: 'Analista'.

	"role asserts"
	role := model roles first.
	self assert: (role isKindOf: PMRole).
	self assert: role mooseName equals: 'Analista'.

	"artifacts asserts"
	artifact := model artifacts first.
	self assert: (artifact isKindOf: PMArtifact).
	self assert: artifact mooseName equals: 'Caso de Uso'.
	self assert: artifact outputTasks first == task.
	self assert: artifact inputTasks first == nexttask.

	"artifacts associated to tasks asserts"
	self assert: task hasArtifactOutputs.
	self assert: task artifactOutputs size equals: 1.
	artifactTask := task artifactOutputs first.
	self assert: artifact == artifactTask.

	"roless associated to tasks asserts
	self assert: (task hasRoles).
	self assert: (task roles size = 1).
	roleTask := task roles first.
	self assert: (artifact == artifactTask)."
	self assert: task hasArtifactMandatoryInputs.
	self assert: task artifactMandatoryInputs size equals: 1.


	"template asserts"
	template := model templates first.
	self assert: (template isKindOf: PMTemplate).
	self assert: template mooseName equals: 'Template Caso de Uso'.

	"activities asserts"
	activity := model activities first.
	self assert: (activity isKindOf: PMActivity).
	self assert: activity mooseName equals: 'Identificar Actores y CU'.
	self deny: activity hasPredecessor.
	"self assert: (activity predecessors first == nil).	"

	"taskDescriptor asserts"
	"taskDescriptor := model taskDescriptors first.
	self assert: (taskDescriptor isKindOf: PMTaskDescriptor).
	self assert: (taskDescriptor elementName = 'Especificar CAso de USo').
	tTaskDescriptor := taskDescriptor tasks first.
	self assert: (task == taskTaskDescriptor).
	"
	
	"Metrics Tests"
	self assert: model averageTaskInputDependences equals: 1.
	self assert: model averageTaskOutputDependences equals: 0.5.
	self assert: model sigmaTaskInputDependences equals: 0.
	self assert: model sigmaTaskOutputDependences equals: 0.5.

	"Group testing"
	self assert: (model tasksGroup isKindOf: PMTaskGroup).
	self assert: model tasksGroup myModel == model.
	self assert: (model rolesGroup isKindOf: PMRoleGroup).
	self assert: model rolesGroup myModel == model.
	self assert: (model artifactsGroup isKindOf: PMArtifactGroup).
	self assert: model artifactsGroup myModel == model.
	self assert: (model entities allSatisfy: [ :ent | ent mooseModel == model ]).