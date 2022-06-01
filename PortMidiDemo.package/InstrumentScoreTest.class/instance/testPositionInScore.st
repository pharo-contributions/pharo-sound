tests
testPositionInScore
	| aTrack |
	aTrack := InstrumentScore new.
	self assert: aTrack positionInScore equals: 1.
	aTrack positionInScore: 2.
	self assert: aTrack positionInScore equals: 2.