tests
testResetTrack
	| aTrack |
	aTrack := InstrumentScore new.
	aTrack positionInScore: 3.
	self assert: (aTrack resetTrack) positionInScore equals: 1.