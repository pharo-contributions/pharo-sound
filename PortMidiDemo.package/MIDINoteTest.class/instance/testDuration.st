tests
testDuration
	| aNote |
	aNote := MIDINote new.
	self assert: aNote duration equals: 500.
	self assert: (aNote duration: 1000) duration equals: 1000.