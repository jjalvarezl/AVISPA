instance creation
fromXMLDescription: xmlElement
	| pmConcept presentation pmPresentation|
	"Implements super fromXMLDescription function from class PMObject that recieves xmlElement."
	pmConcept := super fromXMLDescription: xmlElement.
	"Sets conceptName on class PMConcept from content attribute name from xmlElement (<ContentElement xsi:type=uma:Concept ...><Presentation ...><MainDescription>Main description</MainDescription></Presentation></ContentElement>)"
	pmConcept conceptName: (xmlElement attributeAt: #name).
	
	"Select each element that has tag presentation (<Presentation ...><MainDescription>Main description</MainDescription></Presentation>)"
	presentation := xmlElement // #Presentation.
	"Select the first and only element and parse the presentations founded on previous line to fromXMLDescription function from PMPresentation class."
	pmPresentation := (presentation collect: [:xmlElement2 | PMPresentation fromXMLDescription: xmlElement2]) first.
	
	pmPresentation concept: pmConcept.
	pmConcept presentation: pmPresentation.
	^ pmConcept