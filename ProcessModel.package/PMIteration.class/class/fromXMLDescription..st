instance creation
fromXMLDescription: xmlElement
	| answer |
	answer := super fromXMLDescription: xmlElement.
	
	^ answer