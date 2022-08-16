tests
testChangeNoteTimeAtTo
	| aTrack |
	aTrack := MIDITrack new.
	aTrack addEventToTrack: (MIDINoteEvent new time: 2500).
	self assert: (aTrack events at: 1) time equals: 2500.
	aTrack changeNoteTimeAt: 1 to: 5000.
	self assert: (aTrack events at: 1) time equals: 5000.