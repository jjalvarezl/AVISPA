as yet unclassified
execute
	| model modelVar fileStream fileStreamVar|
	self info.
	
	fileStream := UITheme builder
		fileOpen: 'Import EPF XML model' 
		extensions: #('xml').
		
	fileStream ifNil: [ ^ self ].
	
	fileStreamVar  := UITheme builder
		fileOpen: 'Import EPF XML model' 
		extensions: #('xml').
		
	model := ProcessModelImporter new importFromStream: fileStream.
	model resolveReferences: false.
	model initializeMetrics.
	model name: fileStream localName,'-AVISPA'.
	model install.
	self addModel: model.
	
	modelVar := ProcessModelImporter new importFromStream: fileStreamVar.
	modelVar resolveReferences: true.
	modelVar resolucionVariability.
	modelVar initializeMetrics.
	modelVar name: fileStream localName ,'-vAVISPA'.
	modelVar  install.
	self addModel: modelVar .