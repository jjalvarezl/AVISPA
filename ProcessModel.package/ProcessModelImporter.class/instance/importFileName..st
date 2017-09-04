as yet unclassified
importFileName: aString
	"
	self new importFileName: 'openup.xml'
	"
	| stream pmModel |
	stream := FileStream fileNamed: aString.
	pmModel := self importFromStream: stream.
	pmModel fileName: aString.
	^ pmModel