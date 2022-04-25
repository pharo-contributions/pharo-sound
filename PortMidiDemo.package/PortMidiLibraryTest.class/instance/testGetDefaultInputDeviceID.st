tests
testGetDefaultInputDeviceID
	"Tests wether PortMidi library can get any MIDI input device ID or not."
	self assert: (self input = -1) equals: false.