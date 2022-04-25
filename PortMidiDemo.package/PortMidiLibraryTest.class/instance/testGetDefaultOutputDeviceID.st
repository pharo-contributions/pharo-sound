tests
testGetDefaultOutputDeviceID
	"Tests wether PortMidi library can get any MIDI output device ID or not."
	self assert: (self output = -1) equals: false.