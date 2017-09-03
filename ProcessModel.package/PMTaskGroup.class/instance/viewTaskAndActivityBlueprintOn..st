visualization
viewTaskAndActivityBlueprintOn: aView
	| b |
	b := RTMondrian new.
	b view: aView.
	b
		nodes: self
		forEach: [ :task | 
			b shape box
				size: [ :acti | acti numberOfOutputTasks * 15 ].
			b nodes: task superActivities.
			b layout grid ].
	b layout grid.
	b edges shape
		arrowedLine;
		color: Color blue trans.
	b edges
		objects: (self flatCollect: #superActivities);
		connectFromAll: #predecessors.
	^b build.