initialization
initialize
	| instance |
	instance := PortMidiLibrary uniqueInstance.
	instance portMidiInitialize.
	self defaultOutput: instance getDefaultOutputDeviceID.
	self midiOut: (instance createNewPointerForStreamWithType: 'void**').
	self melody: OrderedCollection new.