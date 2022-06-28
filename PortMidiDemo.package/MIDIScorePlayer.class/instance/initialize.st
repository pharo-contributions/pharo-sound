initialization
initialize
	"Creates a new pointer for the MIDI output stream and initialize correctly the PortMidi library."
	| instance |
	instance := PortMidiLibrary uniqueInstance.
	self scoreVolume: self class defaultVolume.
	self currentVersionIndex: 1.
	versions := OrderedDictionary new.