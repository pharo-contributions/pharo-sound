initialization
initialize
	| instance |
	instance := PortMidiLibrary uniqueInstance.
	self midiOut: (instance createNewPointerForStreamWithType: 'void**').