as yet unclassified
importFromStream: stream
	| document pmModel |
	document := XMLDOMParser parse: stream.

	pmModel := self importXMLDocument: document.
	^ pmModel