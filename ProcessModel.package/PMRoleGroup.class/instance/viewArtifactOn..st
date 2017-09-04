visualization
viewArtifactOn: view 
   view shape rectangle
	     width: [:each | each numberOfTasks * 10];
	     height: [:each | each numberOfArtifacts * 10].
        view nodes: self