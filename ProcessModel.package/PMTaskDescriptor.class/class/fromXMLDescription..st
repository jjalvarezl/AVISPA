instance creation
fromXMLDescription: xmlElement
	"comment stating purpose of message"

	| answer |
	answer := super fromXMLDescription: xmlElement.
	"answer usedTask: (PMTask fromXMLDescriptionAsString: ((xmlElement // #Task) first asString))."
	^ answer