tests
testOpenMidiOutWithDevice
	| aPrestation |
	aPrestation := Prestation new.
	self assert: (aPrestation openMidiOutWithDevice: Prestation DefaultOutput) equals: 0.
	aPrestation closeMidiOut.