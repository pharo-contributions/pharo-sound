tests
testChangeDuration
	| aTrack notes |
	aTrack := MIDITrack new.
	notes := OrderedCollection new.
	3 timesRepeat: [ 
		notes add: (MIDINoteEvent new duration: MIDINoteEvent defaultDuration).
		 ].
	aTrack addAllToTrack: notes.
	aTrack events do: [ :each |
			self assert: each duration equals: MIDINoteEvent defaultDuration
		 ].
	aTrack changeAllDuration: 1000.
	aTrack events do: [ :each |
			self assert: each duration equals: 1000
		 ].
	