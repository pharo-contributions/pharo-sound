tests
testOctave
	| aNote |
	aNote := MIDINote new.
	self assert: aNote octave equals: 6.
	self assert: (aNote octave: 3) octave equals: 3.