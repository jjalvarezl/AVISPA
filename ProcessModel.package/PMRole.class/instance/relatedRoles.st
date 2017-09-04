accessing-computed
relatedRoles
	| answer |
	answer := OrderedCollection new.
	self tasks do: [:task | answer addAll: task roles ].
	^ answer asSet