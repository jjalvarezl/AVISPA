hooks
execute
	| model modelVar fileStream fileStreamVar|
	self info.
	
	fileStream := UITheme builder
		fileOpen: 'Import EPF XML model' 
		extensions: #('xml').
		
	fileStream ifNil: [ ^ self ].
	
	model := ProcessModelImporter new importFromStream: fileStream.
	modelVar := model clone.
	
	"Realizando el modelo con AVISPA"
	model resolveReferences: false.
	model initializeMetrics.
	model name: fileStream localName,'-AVISPA'.
	model install.
	self addModel: model.
	
	"Realizando el modelo con vAVISPA"
	modelVar resolveReferences: true.
	modelVar resolucionVariability.
	modelVar initializeMetrics.
	modelVar name: fileStream localName ,'-vAVISPA'.
	modelVar  install.
	self addModel: modelVar .