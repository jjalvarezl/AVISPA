visualization
viewBasic
	| view |
	<menuItem: 'Test View' category: 'Mondrian'>
	view := RTMondrian new.
	self viewBasicOnTest: view.
	view open