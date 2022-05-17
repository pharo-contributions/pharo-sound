initialization
initialize
	| instance |
	instance := PortMidiLibrary uniqueInstance.
	instance portMidiInitialize.
	self defaultOutput: instance getDefaultOutputDeviceID.
	self melody: OrderedCollection new.
	self midiOut: (instance createNewPointerForStreamWithType: 'void**').
	self timerCounter: 0.
	self currentNoteIndex: 1.