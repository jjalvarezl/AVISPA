as yet unclassified
execute
	| modelVar fileStreamVar|
	self info.
	
	fileStreamVar  := UITheme builder
		fileOpen: 'Import EPF XML model' 
		extensions: #('xml').
		
	fileStreamVar ifNil: [ ^ self ].
	
	modelVar := ProcessModelImporter new importFromStream: fileStreamVar.
	modelVar resolveReferences: true.
	modelVar resolucionVariability.
	modelVar initializeMetrics.
	modelVar name: fileStreamVar localName ,'-vAVISPA'.
	modelVar  install.
	self addModel: modelVar .