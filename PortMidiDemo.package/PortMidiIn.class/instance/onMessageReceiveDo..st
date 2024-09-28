instance creation
onMessageReceiveDo: aBlock

	self ensureOpen.
	receiverBlock := aBlock.
	buffer := PortMidiEvent new.
	PortMidiInPoller add: self