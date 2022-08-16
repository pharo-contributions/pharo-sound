tests
testNoteValue
	| aNote |
	aNote := MIDINoteEvent new.
	self assert: aNote noteValue isNil.
	self assert: (aNote noteValue: 60) noteValue equals: 60.