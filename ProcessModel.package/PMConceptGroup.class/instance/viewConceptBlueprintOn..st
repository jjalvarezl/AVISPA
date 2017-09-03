visualization
viewConceptBlueprintOn: mondrian
| coll view legend numberOfConcepts |

numberOfConcepts := myModel numberOfConcepts.
view:= RTMondrian new.
view view: mondrian.
coll:=self asArray.
"view interaction highlightNeighbour: #followingTasks color: Color orange."
view shape rectangle
		borderWidth: 1;
		"borderColor: [:each2| each2 use = false ifTrue: [Color red]ifFalse: [Color green]];"
		"linearFillColor: #numberOfConcepts within:coll ;"
	   width: [: each | 10 ];
	   height: [: each | 10 ].
"view shape rectangle
		borderWidth: 1;
		linearFillColor: #numberOfRoles within: inuse ;
	     width: [:each | each numberOfArtifactOutputs * 10];
	     height: [:each | each numberOfArtifactMandatoryInputs * 10].	
	"   
   view nodes: coll.
   "view shape arrowedLine color: Color gray trans; withShorterDistanceAttachPoint."
   "view edges source: coll connectFrom: #yourself toAll: #followingTasks."
   view layout flow.
   view build.
   legend := RTLegendBuilder new.
	legend view: view view.
	legend addText: 'Concepts'.
	legend addRectanglePolymetricWidth: 'N/A' height: 'N/A' box: 'Concept'.
	"legend addColor: Color red text: 'Tasks not used Task in use'.
	legend addColor: Color green text: 'Tasks in use and Tasks'.
	legend addLineColor: Color gray text:'Task Artefact Flow'."
	legend addText: 'Total number of concepts: ', numberOfConcepts asString.
	legend build.