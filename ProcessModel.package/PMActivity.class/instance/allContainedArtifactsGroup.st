moose finder
allContainedArtifactsGroup
	<navigation: 'All contained artifacts'>
	| pmArtifactGroup |
	pmArtifactGroup := PMArtifactGroup 
		withAll: self allContainedArtifacts 
		withDescription: 'Artifacts contained in ', self printString.
	pmArtifactGroup myModel: self myModel.
		
	^ pmArtifactGroup.