visualization
viewInputTaskDistributionBlueprintOn: view 

| dict values values2 | 
dict := Dictionary new.
self do: [:t |
	(dict at: (t distanceToMeanInputArtifacts)ifAbsentPut: [OrderedCollection new])
		add: t.
].

values := dict keys asSortedCollection.
values2 := OrderedCollection new.
values do: [:v | values2 add: (dict at: v) size].

view shape: 
	(MOCurveShape new 
		width: 400; 
		height: 70; 
		colorWhenPositive:  Color lightGray; 
		colorWhenNegative: Color lightRed).
view node: values2