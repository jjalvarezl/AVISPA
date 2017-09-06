accessing
allContainedArtifacts
   | allContainedArtifacts |
   allContainedArtifacts := OrderedCollection new.
	self allContainedTasks do: [ :pmTask |
		
		pmTask artifactMandatoryInputs do: [ :pmArtifact |
			(allContainedArtifacts includes: pmArtifact)
				ifFalse: [ allContainedArtifacts add: pmArtifact ]
		].
	
		pmTask artifactOutputs do: [ :pmArtifact |
			(allContainedArtifacts includes: pmArtifact)
				ifFalse: [ allContainedArtifacts add: pmArtifact ]
		]
	].
	^ allContainedArtifacts.