accessing
desviationToMediaOutputArtifactsCal: anObject
	desviationToMeanOutputArtifacts := anObject - self numberOfArtifactOutputs.
	^ desviationToMeanOutputArtifacts
	