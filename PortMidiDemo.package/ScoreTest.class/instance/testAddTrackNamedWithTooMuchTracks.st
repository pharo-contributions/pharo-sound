tests
testAddTrackNamedWithTooMuchTracks
	| aScore |
	aScore := NewMIDIScore new.
	1 to: 18 do: [ :index |
			aScore addTrack: MIDITrack new named: 'instrument', index asString.
		 ].
	self assert: aScore tracks size equals: 16.