visualization
viewBasic2
	<menuItem: 'View basic 2' category: 'Mondrian'> 
	
	| view |
	view := RTMondrian new.
	self viewBasicOn2: view.
	view open