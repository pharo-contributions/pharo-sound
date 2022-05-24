tests
testAddNewTrackWithNamed
	| aTrack |
	aTrack := InstrumentScore newTrackWith: #( C D E ).
	self assert: aTrack track size equals: 3.
	self assert: (aTrack track at: 1) note noteName equals: #C.
	self assert: (aTrack track at: 2) note noteName equals: #D.
	self assert: (aTrack track at: 3) note noteName equals: #E.