initialization
initialize
	"Creates a new pointer for the MIDI output stream and initialize correctly the PortMidi library."
	| instance |
	instance := PortMidiLibrary uniqueInstance.
	self scoreVolume: self class defaultVolume.
	self modifications: OrderedCollection new.
	self nextModificationIndex: 1.
	startTime := 0