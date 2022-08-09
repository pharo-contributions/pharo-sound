tests
testPositionInScore
	| aTrack |
	aTrack := MIDITrack new.
	self assert: aTrack nextEventIndex equals: 1.
	aTrack nextEventIndex: 2.
	self assert: aTrack nextEventIndex equals: 2.