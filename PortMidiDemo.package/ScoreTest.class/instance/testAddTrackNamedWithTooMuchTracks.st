tests
testAddTrackNamedWithTooMuchTracks
	| aScore |
	aScore := Score new.
	1 to: 18 do: [ :index |
			aScore addTrack: InstrumentScore new named: 'instrument', index asString.
		 ].
	self assert: aScore tracks size equals: 16.