tests
testChangeAllVelocity
	| aTrack |
	aTrack := MIDITrack new.
	3 timesRepeat: [ | aNote |
		aNote := MIDINoteEvent new.
		aTrack addEventToTrack: aNote ].
	aTrack events do: [ :each |
		self assert: each velocity equals: 64 ].
	
	aTrack changeAllVelocity: 20.
	
	aTrack events do: [ :each |
		self assert: each velocity equals: 20 ].