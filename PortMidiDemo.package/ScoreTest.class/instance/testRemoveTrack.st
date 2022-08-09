tests
testRemoveTrack
	| aScore |
	aScore := NewMIDIScore new.
	aScore addTrack: MIDITrack new named: #(Bass).
	aScore removeTrack: #(Bass).
	self assert: aScore tracks size equals: 0