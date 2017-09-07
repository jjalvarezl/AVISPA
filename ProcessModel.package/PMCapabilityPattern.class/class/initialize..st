initialization
initialize: xmlElement
	| answer |
	answer := super fromXMLDescription: xmlElement.
	
	^ answer