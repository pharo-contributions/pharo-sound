tests
testResetTrack
	| aTrack |
	aTrack := MIDITrack new.
	aTrack nextEventIndex: 3.
	self assert: (aTrack resetTrack) nextEventIndex equals: 1.