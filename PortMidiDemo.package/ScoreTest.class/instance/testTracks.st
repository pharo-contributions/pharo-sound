tests
testTracks
	| aScore |
	aScore := NewMIDIScore new.
	self deny: aScore tracks equals: nil.
	self assert: aScore tracks size equals: 0