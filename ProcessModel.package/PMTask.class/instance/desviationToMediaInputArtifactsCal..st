accessing
desviationToMediaInputArtifactsCal: anObject
	desviationToMeanInputArtifacts := anObject - self numberOfArtifactMandatoryInputs.
	^ desviationToMeanInputArtifacts
	