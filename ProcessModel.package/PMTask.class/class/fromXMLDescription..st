as yet unclassified
fromXMLDescription: xmlElement
	| answer |
	answer := super fromXMLDescription: xmlElement.
	self assert: [ answer id notEmpty ].
	^ answer