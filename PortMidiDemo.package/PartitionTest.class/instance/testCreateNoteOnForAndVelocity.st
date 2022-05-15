tests
testCreateNoteOnForAndVelocity
	| noteOnMessage |
	noteOnMessage := Partition new createNoteOnFor: Note newC andVelocity: 16r64.
	
	self assert: (instance portMidiGetStatusFromMessage: noteOnMessage) equals: 16r90.
	self assert: (instance portMidiGetFirstDataFromMessage: noteOnMessage) equals: 16r3C.
	self assert: (instance portMidiGetSecondDataFromMessage: noteOnMessage) equals: 16r64.