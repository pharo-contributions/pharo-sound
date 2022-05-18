tests
testOpenMidiOutWithDevice
	| aPrestation |
	aPrestation := Prestation new.
	self assert: (aPrestation openMidiOutWithDevice: Prestation defaultOutput) equals: 0.
	aPrestation closeMidiOut.