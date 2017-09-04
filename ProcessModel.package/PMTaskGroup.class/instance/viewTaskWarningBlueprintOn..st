visualization
viewTaskWarningBlueprintOn: mondrian
|coll coll2 view legend|

   view := RTMondrian new.
   view view:mondrian.
   view interaction highlightNeighbour: #followingTasks color: Color green.
	view shape rectangle 
          fillColor: [:each | ((each distanceToMeanOutputArtifacts * (-1.0)) > self myModel sigmaTaskOutputDependences)  ifTrue: [Color red] ifFalse:[Color white]];
		  borderColor: Color black;
	     width: [:each | each numberOfArtifactOutputs * 10];
	     height: [:each | each numberOfArtifactMandatoryInputs * 10].
   	coll:= self asArray.
	"coll2 := coll select: [:each| each use = true]."
	coll2 := coll select: [:each| true].
	view nodes: coll2.
	view shape line."color: Color gray trans; withShorterDistanceAttachPoint."
	view edges source: coll2 connectFrom: #yourself toAll: #followingTasks.
	view layout tree.
	"view root interaction item: 'inspect group' action: [:v | coll2 inspect]"
	view build.
	legend := RTLegendBuilder new.
	legend view: view view.
	legend addText: 'Complexity Task Pattern'.
	legend addRectanglePolymetricWidth: '#ProducedArtefacts' height: '#ComsumedArtefacts' box: 'Task'.
	legend addColor: Color red text:'Tasks producing many artefacts'.
	legend addLineColor: Color red text:'Replace'.
	legend build