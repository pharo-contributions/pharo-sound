tests
testAddTrackNamed
	| aScore |
	aScore := NewMIDIScore new.
	aScore addTrack: MIDITrack new named: #Bass.
	self assert: aScore tracks size equals: 1.
	aScore addTrack: (MIDITrack new) named: #Guitar.
	self assert: aScore tracks size equals: 2.
	aScore addTrack: (MIDITrack new) named: #Bass.
	self assert: aScore tracks size equals: 2.