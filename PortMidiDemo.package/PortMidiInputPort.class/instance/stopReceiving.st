private
stopReceiving

	PortMidiInPoller remove: self.
	receiverBlock := nil