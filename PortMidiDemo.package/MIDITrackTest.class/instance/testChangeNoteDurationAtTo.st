tests
testChangeNoteDurationAtTo
	| aTrack |
	aTrack := MIDITrack new.
	aTrack addEventToTrack: (MIDINoteEvent new).
	self assert: (aTrack events at: 1) duration equals: 500.
	aTrack changeNoteDurationAt: 1 to: 1000.
	self assert: (aTrack events at: 1) duration equals: 1000.