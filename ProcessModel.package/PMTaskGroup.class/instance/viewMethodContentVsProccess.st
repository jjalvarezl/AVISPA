visualization
viewMethodContentVsProccess
	<menuItem: 'Task Method Content vs Process Blueprint' category: 'Avispa Blueprints'>
	| view |
	view := RTView new."title: 'Method Content vs Process'"
	self viewMethodContentVsProccessOn: view.
	view openTitled:'Task Method Content vs Process Blueprint'. 