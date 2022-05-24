tests
testRemoveTrackNamed
	| aScore |
	aScore := Score new.
	aScore addTrack: InstrumentScore new named: #(Bass).
	aScore removeTrackNamed: #(Bass).
	self assert: aScore tracks size equals: 0