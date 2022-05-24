initialization
initialize
	"Creates a new pointer for the MIDI output stream and initialize correctly the PortMidi library."
	| instance |
	instance := PortMidiLibrary uniqueInstance.
	self midiOut: (instance createNewPointerForStreamWithType: 'void**').
	instance portMidiInitialize.