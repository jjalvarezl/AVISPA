visualization
viewBasicOn3: view
	view shape rectangle 
	withoutBorder.
	
	view nodes: self tasks forEach: [:each|

	view node: each forIt: [
		view shape rectangle withoutBorder.
		view node: each forIt: [
			view nodes: each artifactMandatoryInputs].

		view shape rectangle
				width: [:t  | t numberOfArtifactOutputs * 5];
				height: [:t | t numberOfArtifactMandatoryInputs * 5].
		view node: each.
		"view edges: (each artifactMandatoryInputs collect: [:v | each -> v]) from: #key to: #value."

		view shape rectangle withoutBorder.
		view node: each forIt: [
			view nodes: each artifactOutputs].

		view verticalLineLayout center.
	].
	view shape rectangle 
				withoutBorder;
				text: #mooseName. 
	view node: each.
	view verticalLineLayout center.
].
view edges: self tasks from: #yourself toAll: #followingTasks.
view gridLayout.
