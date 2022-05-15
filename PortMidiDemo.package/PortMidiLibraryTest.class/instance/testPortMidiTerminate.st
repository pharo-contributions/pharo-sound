libraryManagement
testPortMidiTerminate
	"Tests if PortMidi library can be well terminated."
	PortMidiLibrary uniqueInstance portMidiInitialize.
	self assert: PortMidiLibrary uniqueInstance portMidiTerminate equals: 0