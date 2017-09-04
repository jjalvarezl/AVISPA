buttons
infoButtonOn: view
	| v lbl1 |
	view addMenu: 'Info...' callBack: [ :stack |

		v := ROView new.

		v add: (lbl1 := ((ROElement  labelOn: self avispaDescription))).
		lbl1 forward.
		
		stack replaceFirstBy: v.
		v translateBy: 0@30.
		v @ RODraggable @ RODraggableWithVelocity
	].