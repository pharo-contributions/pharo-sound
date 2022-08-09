tests
testNoteValue
	| aNote |
	aNote := MIDINote new.
	self assert: aNote noteValue isNil.
	self assert: (aNote noteValue: 60) noteValue equals: 60.