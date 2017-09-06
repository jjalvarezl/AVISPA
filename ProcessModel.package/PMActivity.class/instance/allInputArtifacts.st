accessing
allInputArtifacts
	| allInputArtifacts |
   allInputArtifacts := OrderedCollection new.
	self allContainedTasks do: [ :pmTask |
		
		pmTask artifactMandatoryInputs do: [ :pmArtifact |
			(allInputArtifacts includes: pmArtifact)
				ifFalse: [ allInputArtifacts add: pmArtifact ]
		].
	].
	^ allInputArtifacts.