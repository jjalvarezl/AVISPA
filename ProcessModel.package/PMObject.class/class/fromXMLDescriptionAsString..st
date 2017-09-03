instance creation
fromXMLDescriptionAsString: aString
	| xml |
	xml := (XMLDOMParser parse: aString usingNamespaces: false) nodes first.
	^ self fromXMLDescription: xml