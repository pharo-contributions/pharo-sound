private
terminate 

	self interface portMidiTerminate.
	PortMidiInPoller soleInstance stopPolling.
	PortMidiInPoller resetSoleInstance.