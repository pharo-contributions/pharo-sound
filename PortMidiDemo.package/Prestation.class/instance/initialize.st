initialization
initialize 
	| instance |
	instance := PortMidiLibrary uniqueInstance.
	self scores: Dictionary new.
	self tempo: self class defaultTempo.
	self midiOut: (instance createNewPointerForStreamWithType: 'void**').