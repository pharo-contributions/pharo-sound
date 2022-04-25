tests
testPortMidiInitialize
	"Tests if PortMidi library can be well initialized."
	self assert: PortMidiLibrary uniqueInstance portMidiInitialize equals: 0