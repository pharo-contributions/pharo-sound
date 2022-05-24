tests
testAddTrackNamed
	| aScore |
	aScore := Score new.
	aScore addTrack: InstrumentScore new named: #(Bass).
	self assert: aScore tracks size equals: 1.
	aScore addTrack: (InstrumentScore new) named: #(Guitar).
	self assert: aScore tracks size equals: 2.
	aScore addTrack: (InstrumentScore new) named: #(Bass).
	self assert: aScore tracks size equals: 2.