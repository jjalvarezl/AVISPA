navigation
outputArtifactsGroup
	"<navigation: 'Output artifacts'>"
	
	^ (PMArtifactGroup withAll: self outputArtifacts)
		myModel: self myModel;
		yourself