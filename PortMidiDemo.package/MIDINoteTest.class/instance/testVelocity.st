tests
testVelocity
	| aNote |
	aNote := MIDINote new.
	self assert: aNote velocity equals: 64.
	self assert: (aNote velocity: 120) velocity equals: 120.