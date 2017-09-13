instance creation
fromXMLDescription: xmlElement
	| pmPresentation |
	pmPresentation := super fromXMLDescription: xmlElement.
	"Setting MainDescription"
	((xmlElement // #MainDescription) first isNil)
	 ifFalse: [pmPresentation mainDescription:  (xmlElement // #MainDescription) first nodes first].
	^ pmPresentation