tests
testChangeAllDuration
	| aTrack |
	aTrack := MIDITrack new.
	3 timesRepeat: [ | aNote |
		aNote := MIDINoteEvent new.
		aTrack addEventToTrack: aNote ].
	aTrack events do: [ :each |
		self assert: each duration equals: 500 ].
	
	aTrack changeAllDuration: 1000.
	
	aTrack events do: [ :each |
		self assert: each duration equals: 1000 ].