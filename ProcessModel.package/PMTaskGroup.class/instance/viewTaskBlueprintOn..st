visualization
viewTaskBlueprintOn: aView
	"----------------------"
	"Display the blueprint"

   | coll coll2 auxE b legend|
   b := RTMondrian new.
	b view: aView.
	
   coll:=self asArray .
   coll2 := coll select: [:each| each use = true].	
	b interaction highlightNeighbour: #followingTasks color: Color orange.
   b shape rectangle
		borderColor: Color black;
		borderWidth: 1;
		linearFillColor: #numberOfRoles within: coll2;
	   width: [:each | each numberOfArtifactOutputs * 10];
	   height: [:each | each numberOfArtifactMandatoryInputs * 10].
	     "text: [:each | each presentationName ]."
 
	coll := coll2  select: [:each| each visibility = true].
 	b nodes: coll.
  	auxE := coll.
	"line := view shape line.
	line add: (ROArrow new size: 5) offset: 0.3."
	"mondrian shape arrowedLine headOffset: 0.3."
	b shape arrowedLine color: Color gray trans; withShorterDistanceAttachPoint.
   b edges source: auxE connectFrom: #yourself toAll: #followingTasks.	
	b layout tree.
	b build.
	
	
	legend := RTLegendBuilder new.
	legend view: b view.
	legend textSize:6.
	legend addText: 'Task Blueprint'.
	legend addRectanglePolymetricWidth: '#WArtefactsProduced' height: '#ArtefactsConsumed' box: 'Task'.
   legend addLineColor: Color black text: 'Artefact Flow'.
   legend addColor: Color gray text:'#RolesInvolved'.
   
"   legend below.
   legend left."
   legend build.
	
	