api
onMessageReceiveDo: aBlock

	self ensureOpen.
	receiverBlock := aBlock.
	bufferArray := (FFIArray ofType: PortMidiEvent size: self bufferArraySizeOrDefault) new.
	PortMidiInPoller add: self