accessing-computed
followingTasks
	| answer |
	answer := OrderedCollection new.
	self artifactOutputs do: [:arti | answer addAll: arti inputTasks].
	^ answer asSet