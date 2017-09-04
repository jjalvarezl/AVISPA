accessing-computed
outputArtifacts
	| answer |
	answer := OrderedCollection new.
	self inputTasks  do: [:task | answer addAll: task artifactOutputs ].
	^ answer asSet