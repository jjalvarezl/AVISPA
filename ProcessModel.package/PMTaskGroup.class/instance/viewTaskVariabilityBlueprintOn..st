visualization
viewTaskVariabilityBlueprintOn: mondrian 

| coll auxE auxC view legend |
coll:=self.
view:= RTMondrian new.
view view: mondrian.
view interaction highlightNeighbors: #followingTasks color: Color orange.
view shape rectangle
		borderWidth: 1;
		linearFillColor: #numberOfRoles within: coll;
	   width: [:each | each numberOfArtifactOutputs * 10];
	   height: [:each | each numberOfArtifactMandatoryInputs * 10].
	   
   view  nodes: coll.
   auxE := coll select: [:each | each variabilityType = 'na' ].
   view shape arrowedLine color: Color gray trans; withShorterDistanceAttachPoint.
   view  edges source: auxE connectFrom: #yourself toAll: #followingTasks.
   auxC :=  coll select: [:each | each variabilityType = 'contributes'].
   view shape arrowedLine color: Color blue trans; withShorterDistanceAttachPoint.
   view  edges source: auxC connectFrom: #yourself to: #baseTask.
   auxC :=  coll select: [:each | each variabilityType = 'replaces'].
   view shape arrowedLine color: Color red trans; withShorterDistanceAttachPoint.
   view  edges source: auxC connectFrom: #yourself to: #baseTask.
   auxC :=  coll select: [:each | each variabilityType = 'extends'].
   view shape arrowedLine color: Color green trans; withShorterDistanceAttachPoint.
   view  edges source: auxC connectFrom: #yourself to: #baseTask.
   auxC :=  coll select: [:each | each variabilityType = 'extendsReplaces' ].
   view shape arrowedLine color: Color orange trans; withShorterDistanceAttachPoint.
   view  edges source: auxC connectFrom: #yourself to: #baseTask.
   view layout tree.
   view build.
   legend := RTLegendBuilder new.
	legend view: view view.
	legend addText: 'Tasks Variability'.
	legend addRectanglePolymetricWidth: '#ProducedArtefacts' height: '#ComsumedArtefacts' box: 'Task'.
	legend addLineColor: Color blue text:'Contribution'.
	legend addLineColor: Color red text:'Replace'.
	legend addLineColor: Color green text:'Extends'.
	legend addLineColor: Color orange text:'Extends and Replace'.
	legend build