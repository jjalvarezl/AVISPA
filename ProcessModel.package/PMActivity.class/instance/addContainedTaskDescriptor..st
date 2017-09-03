accessing
addContainedTaskDescriptor: pmTaskDescriptor
   (containedTaskDescriptors includes: pmTaskDescriptor)
       ifFalse: [ containedTaskDescriptors add: pmTaskDescriptor].
	^ containedTaskDescriptors.