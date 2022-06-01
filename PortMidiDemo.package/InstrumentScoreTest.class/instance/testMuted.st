tests
testMuted
	| aTrack |
	aTrack := InstrumentScore new.
	self assert: aTrack muted equals: false.
	aTrack muted: true.
	self assert: aTrack muted equals: true.