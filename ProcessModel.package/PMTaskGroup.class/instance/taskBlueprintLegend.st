util
taskBlueprintLegend

	taskBlueprintLegend notNil ifTrue: [ ^ taskBlueprintLegend ].
	
	^ taskBlueprintLegend := Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self legendIconContents readStream)