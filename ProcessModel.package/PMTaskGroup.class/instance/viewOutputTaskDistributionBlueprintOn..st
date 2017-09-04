visualization
viewOutputTaskDistributionBlueprintOn: mondrian

| dict values values2 view| 
view:= RTMondrian new.
view view: mondrian.
dict := Dictionary new.
self do: [:t |
	(dict at: (t distanceToMeanOutputArtifacts)ifAbsentPut: [OrderedCollection new])
		add: t.
].

values := dict keys asSortedCollection.
values2 := OrderedCollection new.
values do: [:v | values2 add: (dict at: v) size].

view shape: 
	(RTShape new 
		width: 400; 
		height: 70; 
		positiveColor:  Color lightGray; 
		colorWhenNegative: Color lightRed).
view node: values2
view build.