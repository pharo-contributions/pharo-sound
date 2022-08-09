tests
testChangeNoteVelocityAtTo
	| aTrack |
	aTrack := MIDITrack new.
	aTrack addEventToTrack: (MIDINote new).
	self assert: (aTrack events at: 1) velocity equals: MIDINote defaultVelocity.
	aTrack changeNoteVelocityAt: 1 to: 40.
	self assert: (aTrack events at: 1) velocity equals: 40.