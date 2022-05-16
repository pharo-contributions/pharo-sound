tests
testCloseMidiOut
	"If this tests fail with error -9995, try to save and quit then launch again your inage."
	| aPrestation |
	aPrestation := Prestation new.
	aPrestation openMidiOutWithDevice: PortMidiLibrary uniqueInstance getDefaultOutputDeviceID.
	self assert: aPrestation closeMidiOut equals: 0