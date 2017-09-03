visualization
viewArtifactOn: view 
	view 
		node: self
		forIt: 
			[ view interaction popupText: #popupText.
			view shape rectangle
				size: 10;
				fillColor: Color blue.
			view nodes: self concepts.
			view interaction popupText: #popupText.
			view shape rectangle
				size: 10;
				fillColor: Color green.
			view nodes: self guidelines.
			view interaction popupText: #popupText.
			view shape rectangle
				width: [ :each | each numberOfConcepts * 5 ];
				height: [ :each | each numberOfGuidelines * 5 ];
				fillColor: Color yellow.
			view nodes: self tasks.
			view gridLayout gapSize: 3 ]