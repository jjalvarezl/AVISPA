instance creation
fromXMLDescription: xmlElement
	| presentationName |
	((xmlElement attributeAt:  #presentationName) isEmpty)
		ifTrue: [ presentationName := 'No presentation name on XML importing' ]
		ifFalse: [ presentationName := (xmlElement attributeAt:  #presentationName) asString].
	
	^ self new 
		id: (xmlElement attributeAt:  #id);
		mooseName: (xmlElement attributeAt:  #name);
		presentationName: presentationName;
		yourself.