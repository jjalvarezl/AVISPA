moose finder
viewContainedTasksOn: aView

	| b lb |
	b := RTMondrian new.
	b view: aView.
	self viewContainedTasksOnMondrian: b.
	b build.
	
	lb := RTLegendBuilder new.
	lb view: aView.
	lb addText: 'Tasks contained in an activity'.
	lb addText: 'Each box is a task'.
	lb addRectanglePolymetricWidth: 'numberOfArtifactOutputs' height: 'numberOfArtifactMandatoryInputs' box: 'Des (Desviation of the media)'.
	lb build.