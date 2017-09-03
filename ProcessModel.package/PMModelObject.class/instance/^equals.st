equality
= another
	(another isKindOf: PMObject) ifFalse: [ ^ false ].
	^ self id = another id