as yet unclassified
fromXMLDescription: xmlElement
	| answer |
	answer := self new.

	answer briefDescription: (xmlElement attributeAt: #briefDescription). 
	answer isAbstract: (xmlElement attributeAt:  #isAbstract) = 'false'.
	answer mooseName: (xmlElement attributeAt:  #name).
	answer id: (xmlElement attributeAt:  #id).
	answer presentationName: (xmlElement attributeAt:  #presentationName).
	answer	idBase: (xmlElement attributeAt:  #variabilityBasedOnElement).
      answer variabilityType: (xmlElement attributeAt:  #variabilityType).
   answer conceptIds: ((xmlElement / #Concept) collect: #contentString). 
	answer guidelineIds: ((xmlElement / #Guideline), (xmlElement / #Concept), (xmlElement / #Template), (xmlElement / #Example), (xmlElement / #Checklist) collect: #contentString).
	answer checklistIds: ((xmlElement / #Checklist) collect: #contentString).
	answer artifactOutputIds: ((xmlElement / #Output) collect: #contentString).
	answer artifactMandatoryInputIds: ((xmlElement / #MandatoryInput) collect: #contentString).
	answer roleIds: ((xmlElement / #PerformedBy), (xmlElement / #AdditionallyPerformedBy) collect: #contentString).
	^ answer