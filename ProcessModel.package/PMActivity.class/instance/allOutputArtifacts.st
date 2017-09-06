accessing
allOutputArtifacts
	| allOutputArtifacts |
   allOutputArtifacts := OrderedCollection new.
	self allContainedTasks do: [ :pmTask |
		
		pmTask artifactOutputs do: [ :pmArtifact |
			(allOutputArtifacts includes: pmArtifact)
				ifFalse: [ allOutputArtifacts add: pmArtifact ]
		].
	].
	^ allOutputArtifacts.