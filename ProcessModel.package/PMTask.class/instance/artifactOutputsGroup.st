navigation
artifactOutputsGroup
	<navigation: 'Artifact outputs'>
	| pmArtifactGroup |
	pmArtifactGroup := PMArtifactGroup 
		withAll: self artifactOutputs
		withDescription: 'Artifact output from task ' , self mooseName.
	pmArtifactGroup myModel: self myModel.
	"^ self privateState 
		attributeAt: #artifactOutputsGroup
		ifAbsentPut:
			[pmArtifactGroup]"
		^pmArtifactGroup