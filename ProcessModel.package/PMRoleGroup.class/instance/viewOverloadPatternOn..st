visualization
viewOverloadPatternOn: mondrian

	|sum average sumstandard standardsigma view legend |
	sum := 0.
	 self myModel roles do:[:each| sum:= sum + each numberOfTasks ].
	average:= sum/(self size).
	sumstandard:=0.
	self myModel roles do:[:each | sumstandard:= sumstandard + ((average - (each numberOfTasks )) squared)].
	standardsigma  := ((sumstandard/(self size))) sqrt .
	view:= RTMondrian new.
	view view: mondrian.
	view interaction highlightNeighbors: #relatedRoles color: Color orange.
   view shape rectangle
	     width: [:each | each numberOfAssociatedArtifacts * 2];
	     height: [:each | each numberOfTasks * 2];
	     borderColor: Color black;
	     fillColor:[:each | ((each  numberOfTasks ) > standardsigma) 
		      ifTrue: [
					 ((each responsibleArtifacts size) > 0)
					      ifTrue: [ Color red ]
			            ifFalse: [ Color yellow ].
			   ]
		      ifFalse: [Color white].
		  ].
	     "text: [:each | each presentationName ]."
   view nodes: self.
   view shape arrowedLine color: Color gray trans; withShorterDistanceAttachPoint.
   view edges source: self connectFrom: #yourself toAll: #relatedRoles.
	view layout circle.
	view build.
	legend := RTLegendBuilder new.
	legend view: view view.
	legend addText: 'Overloaded Roles Pattern'.
	legend addRectanglePolymetricWidth: '#Associated Artifacts' height: '#Tasks' box: 'Role'.
	legend addColor: Color yellow text:'Overload roles'.
	legend addColor: Color red text:'Overload roles with artifact responsability'.
	legend addLineColor: Color gray text:'Role Cooperation'.
	legend build