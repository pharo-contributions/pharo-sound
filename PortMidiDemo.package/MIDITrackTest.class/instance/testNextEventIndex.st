tests
testNextEventIndex
	| aTrack |
	aTrack := MIDITrack new.
	self assert: aTrack nextEventIndex equals: 1.
	aTrack nextEventIndex: 3.
	self assert: aTrack nextEventIndex equals: 3.