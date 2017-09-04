instance creation
fromXMLDescription: xmlElement
	| pmPresentation |
	pmPresentation := super fromXMLDescription: xmlElement.
	"Setting MainDescription"
	pmPresentation mainDescription:  (xmlElement // #MainDescription) first nodes first.
	^ pmPresentation