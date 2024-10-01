private
ensurePolling

	self ensureBufferArray.
	PortMidiInPoller ensureAdded: self