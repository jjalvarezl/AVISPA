buttons
findButtonOn: view

	view addMenu: 'Find...' callBack: [ :stack | 
		| allModels index element |
		allModels := SortedCollection  sortBlock: [ :a1 :a2 | a1 value < a2 value ].
		stack firstView elementsDo: [ :el | 
			el isNotEdge ifTrue: [ allModels add: el -> el model printString ] ].
		
		index := UIManager default chooseFrom: (allModels collect: #value).
		index > 0 ifTrue: [ 
			element := (allModels at: index) key.
			ROFocusView new highlightElement: element ] ].