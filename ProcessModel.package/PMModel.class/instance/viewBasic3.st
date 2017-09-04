visualization
viewBasic3
	<menuItem: 'View basic 3' category: 'Mondrian'> 
	
	| view |
	view := MOViewRenderer new.
	self viewBasicOn3: view.
	view open