initialization
initialize 
	| instance |
	instance := PortMidiLibrary uniqueInstance.
	self scores: Dictionary new.
	self tempo: self class DefaultTempo.
	self midiOut: (instance createNewPointerForStreamWithType: 'void**').