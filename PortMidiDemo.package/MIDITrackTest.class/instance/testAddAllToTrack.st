tests
testAddAllToTrack
	| aTrack notes |
	aTrack := MIDITrack new.
	notes := OrderedCollection new.
	3 timesRepeat: [ 
		notes add: (MIDINoteEvent new).
		 ].
	aTrack addAllToTrack: notes.
	self assert: aTrack events size equals: 3