visualization
viewTaskGuidelinesOn: view 
| coll coll2|
	coll:= self.
	coll2 := coll select: [:each| each use = true].
   view shape rectangle
	     width: [:each | each numberOfGuidelines * 10];
	     height: [:each | each numberOfGuidelines * 10].
   view nodes: coll2 .