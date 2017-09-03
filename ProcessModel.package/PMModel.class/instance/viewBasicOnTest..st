visualization
viewBasicOnTest: view
 view shape rectangle 
	withoutBorder.	
	view nodes: self tasks forEach: [:each|
	   view shape rectangle
				width: each numberOfArtifactOutputs * 10;
				height: each numberOfArtifactMandatoryInputs * 10;
				fillColor: Color red.
		view node: each.
		view edges: each artifactMandatoryInputs from: #inputTasks toAll: #outputTasks.
	].
   view self tasks.
   self tasks do:[:element | 
	    view edges: element artifactMandatoryInputs from: #inputTasks toAll: #outputTasks.
	 ].
   view gridLayout.