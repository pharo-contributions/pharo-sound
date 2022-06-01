tests
testChannel
	| aScore aTrack|
	aTrack := InstrumentScore new.
	self assert: aTrack channel equals: 0.
	aScore := Score new.
	aScore addTrack: (InstrumentScore newTrackWith: #( C D Eb D C )) named: 'random'.
	aScore addTrack: aTrack named: 'aTrack'.
	self assert: aTrack channel equals: 1.