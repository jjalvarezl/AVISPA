visualization
viewMethodContentVsProccessOn: mondrian
| coll view legend |

view:= RTMondrian new.
view view: mondrian.
coll:=self asArray.
view interaction highlightNeighbors: #followingTasks color: Color orange.
view shape rectangle
		borderWidth: 1;
		borderColor: [:each2| each2 use = false ifTrue: [Color red]ifFalse: [Color green]];
		linearFillColor: #numberOfRoles within:coll ;
	   width: [: each | each numberOfArtifactOutputs * 10];
	   height: [:each | each numberOfArtifactMandatoryInputs * 10].
"view shape rectangle
		borderWidth: 1;
		linearFillColor: #numberOfRoles within: inuse ;
	     width: [:each | each numberOfArtifactOutputs * 10];
	     height: [:each | each numberOfArtifactMandatoryInputs * 10].	
	"   
   view nodes: coll.
   view shape arrowedLine color: Color gray trans; withShorterDistanceAttachPoint.
   view edges source: coll connectFrom: #yourself toAll: #followingTasks.
   view layout tree.
   view build.
   legend := RTLegendBuilder new.
	legend view: view view.
	legend addText: 'Method Content Vs Process'.
	legend addRectanglePolymetricWidth: '#ProducedArtefacts' height: '#ComsumedArtefacts' box: 'Task'.
	legend addColor: Color red text: 'Tasks not used Task in use'.
	legend addColor: Color green text: 'Tasks in use and Tasks'.
	legend addLineColor: Color gray text:'Task Artefact Flow'.
	legend build.