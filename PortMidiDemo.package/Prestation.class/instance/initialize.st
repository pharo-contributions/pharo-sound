initialization
initialize 
	| instance |
	instance := PortMidiLibrary uniqueInstance.
	instance portMidiInitialize.
	self scores: Dictionary new.
	self tempo: self class defaultTempo.
	self midiOut: (instance createNewPointerForStreamWithType: 'void**').