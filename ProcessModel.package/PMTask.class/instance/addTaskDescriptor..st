accessing
addTaskDescriptor: aTaskDescriptor
	(taskDescriptors includes: aTaskDescriptor)
		ifFalse: [ taskDescriptors add: aTaskDescriptor ]