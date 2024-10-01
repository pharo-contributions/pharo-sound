private
stopReceiving

	PortMidiInPoller remove: self.
	receiverBlock := nil.
	bufferArray ifNotNil: [
		bufferArray free.
		bufferArray := nil ]