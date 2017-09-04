visualization
viewIndependentSubprojectPatternOn: mondrian
	"----------------------"
	"Compute disjoint sets and attribute a color to each set"
	| ds components orderedComponents normalizer cycleColor coll coll2 view legend|
	view := RTMondrian new.
	view view:mondrian.
	coll:= self asArray.
	coll2 := coll select: [:each| each use = true].
	ds := MalDisjointSets new.
	ds nodes: coll2.
	ds edges: coll2 from: #yourself toAll: #followingTasks.
	ds run.
	components := ds components.
	orderedComponents := Dictionary new.
	components doWithIndex: [:roles :index | 
		roles do: [:role |
			orderedComponents at: role put: index]].

	normalizer := RTNIdentityNormalizer new.
	(1 to: (components size * 10) ) do: [:v | normalizer rtValue: v].
	cycleColor := [:v | normalizer rtValue: ((orderedComponents at: v) + 10)].

	" Variable or expression expected ->----------------------"
	"Display the blueprint"
   view interaction highlightNeighbour: #followingTasks color: Color orange.
   view shape rectangle
		borderColor: [:v | cycleColor value: v];
		borderWidth: 3;
			linearFillColor: #numberOfRoles within: coll2;
	     width: [:each | each numberOfArtifactOutputs * 10];
	     height: [:each | each numberOfArtifactMandatoryInputs * 10].
	     "text: [:each | each presentationName ]."
   view nodes: coll2.
	view shape arrowedLine color: Color gray trans; withShorterDistanceAttachPoint.
	view edges source: coll2 connectFrom: #yourself toAll:#followingTasks.
	view layout tree.
	view build.
	legend := RTLegendBuilder new.
	legend view: view view.
	legend addText: 'Independent Subproject Pattern'.
	legend addRectanglePolymetricWidth: '#ProducedArtefacts' height: '#ComsumedArtefacts' box: 'Task'.
	legend addText:'Each border color means an independent subproject'.
	legend addLineColor: Color gray text:'Task Artefact Flow'.
	legend build