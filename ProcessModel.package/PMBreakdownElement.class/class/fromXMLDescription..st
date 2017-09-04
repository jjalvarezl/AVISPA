as yet unclassified
fromXMLDescription: xmlElement
	| answer |
	answer := super fromXMLDescription: xmlElement.

	answer predecessorIds: ((xmlElement / #Predecessor) collect: #contentString). 
	
	^ answer