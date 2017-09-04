as yet unclassified
fromXMLDescription: xmlElement
	^ self new 
		id: (xmlElement attributeAt:  #id);
		mooseName: (xmlElement attributeAt:  #name);
		presentationName: (xmlElement attributeAt:  #presentationName);
		yourself.