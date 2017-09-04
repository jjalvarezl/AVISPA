navigation
followingVariabilityTasks
	| answer |
	answer := OrderedCollection new.
	self artifactOutputs do: [:arti |  (self myModel usedtasks  includes: arti inputTasks) ifTrue:[Transcript show:  'si se encuentra '; cr. answer add: arti inputTasks ].].
	^ answer asSet 