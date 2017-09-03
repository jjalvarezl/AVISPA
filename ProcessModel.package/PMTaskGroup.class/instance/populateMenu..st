buttons
populateMenu: view

	ROEaselMorphic new 
		zoomInButtonOn: view;
		zoomOutButtonOn: view.
	
	self findButtonOn: view.
	self infoButtonOn: view.
	self legendButtonOn: view.
	
	"We also do a small scrolling to not have the buttons over the nodes"
	view raw translateBy: 0 @ 30.
