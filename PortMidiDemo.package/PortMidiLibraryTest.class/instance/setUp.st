accessing
setUp

	super setUp.
	PortMidiLibrary uniqueInstance portMidiTerminate.
	self
		instance: PortMidiLibrary uniqueInstance; "Instance of the PortMidi library."
		input: self instance getDefaultInputDeviceID; "Default input device ID found by the library."
		output: self instance getDefaultOutputDeviceID "Default output device ID found by the library."