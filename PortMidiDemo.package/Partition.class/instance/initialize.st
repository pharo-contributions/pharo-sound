initialization
initialize
	| instance |
	instance := PortMidiLibrary uniqueInstance.
	self defaultOutput: instance getDefaultOutputDeviceID.
	self midiOut: (instance createNewPointerForStreamWithType: 'void**').