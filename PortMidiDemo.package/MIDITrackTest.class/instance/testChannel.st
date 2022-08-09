tests
testChannel
	| aScore aTrack|
	aTrack := MIDITrack new.
	self assert: aTrack channel equals: 0.
	aScore := NewMIDIScore new.
	aScore addTrack: (MIDITrack newTrackWith: #( C D Eb D C )) named: 'random'.
	aScore addTrack: aTrack named: 'aTrack'.
	self assert: aTrack channel equals: 1.