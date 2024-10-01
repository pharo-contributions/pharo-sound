private
terminate

	PortMidiInPoller soleInstance stopPolling.
	PortMidiInPoller resetSoleInstance.
	self interface portMidiTerminate