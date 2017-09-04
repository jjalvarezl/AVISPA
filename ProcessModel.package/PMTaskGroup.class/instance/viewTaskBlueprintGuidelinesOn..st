visualization
viewTaskBlueprintGuidelinesOn: mondrian

|coll view legend |
view:= RTMondrian new.
view view:mondrian.
coll:= self asArray.
view interaction highlightNeighbors: #followingTasks color: Color orange.
view shape rectangle 
         fillColor:[:each | ((each myGuidelines asArray size) > 0) ifTrue: [Color white] ifFalse: [Color blue]]; 
        borderColor: Color black;
	     width: [:each | each numberOfArtifactOutputs * 10];
	     height: [:each | each numberOfArtifactMandatoryInputs * 10].
	
   view nodes: coll.
	view shape arrowedLine color: Color gray trans; withShorterDistanceAttachPoint.
	view edges source: coll connectFrom: #yourself toAll: #followingTasks.
	view layout tree.
	view build.
	"view root interaction item: 'inspect group' action: [:v | coll inspect]"
	legend := RTLegendBuilder new.
	legend view: view view.
	legend addText: 'Task without Guidelines Pattern'.
	legend addRectanglePolymetricWidth: '#ProducedArtefacts' height: '#ComsumedArtefacts' box: 'Task'.
	legend addColor: Color blue text: 'Tasks without guidelines'.
	legend addLineColor: Color gray text:'Task Artefact Flow'.
	legend build.
	