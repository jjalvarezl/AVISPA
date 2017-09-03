visualization
viewTaskBlueprintClusterOn: mondrian
	"----------------------"
	"Display the blueprint"

   | coll coll2 auxE view legend |
   view := RTMondrian new.
   view view:mondrian.
   coll:=self asArray .
   coll2 := coll select: [:each| each use = true].	
	view interaction highlightNeighbour: #followingTasks color: Color orange.
   view shape circle
		borderColor: Color black;
		borderWidth: 1;
		color: [:each | each numberOfRoles>2 ifTrue:[Color red] ifFalse:[Color green]];
	    width: [:each | each numberOfArtifactOutputs * 10];
	    height: [:each | each numberOfArtifactMandatoryInputs * 10].
	     "text: [:each | each presentationName ]."
 
	coll := coll2  select: [:each| each visibility = true].
 	view nodes: coll.
  	auxE := coll.
	"line := view shape line.
	line add: (ROArrow new size: 5) offset: 0.3."
	view shape arrowedLine color: Color gray trans; withShorterDistanceAttachPoint.
	view edges source: auxE connectFrom: #yourself toAll: #followingTasks.
	"view layout cluster"
	view layout cluster.
	view build.
	legend := RTLegendBuilder new.
	legend view: view view.
	legend addText: 'Tasks Clustered'.
	legend addRectanglePolymetricWidth: '#ProducedArtefacts' height: '#ComsumedArtefacts' box: 'Task'.
	legend addText: 'Tasks clustered are cohesives and related links between clusters means the coupling'.
	legend addLineColor: Color gray text:'Task Artefact Flow'.
	legend build.
		