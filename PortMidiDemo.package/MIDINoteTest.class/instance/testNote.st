tests
testNote
	| aNote |
	aNote := MIDINote new.
	self assert: aNote note isNil.
	self assert: (aNote note: NoteC new) note noteName equals: #C.
	self assert: aNote note noteValue equals: 0