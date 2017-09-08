navigation
deliveryProcessesGroup
	<navigation: 'Delivery Processes'>
	^ self privateState 
		attributeAt: #deliveryProcessesGroup
		ifAbsentPut:
			[(PMDeliveryProcessGroup
				withAll: (self sort: self deliveryProcesses)
				withDescription: 'Delivery Processes from ' , self mooseName)
				myModel: self]