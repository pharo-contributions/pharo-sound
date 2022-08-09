tests
testChangeAllVelocity
	| aTrack |
	aTrack := MIDITrack new.
	3 timesRepeat: [ | aNote |
		aNote := MIDINote new.
		aTrack addEventToTrack: aNote ].
	aTrack events do: [ :each |
		self assert: each velocity equals: 64 ].
	
	aTrack changeAllVelocity: 20.
	
	aTrack events do: [ :each |
		self assert: each velocity equals: 20 ].