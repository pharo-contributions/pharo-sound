playing
playTrackNoteOffEvents: aTrack fromTime: aTime

	| played |
	aTrack currentlyPlayed ifEmpty: [ 
		aTrack nextEventIndex > aTrack events size ifTrue: [ 
			self score doneTracks add: aTrack ].
		^ self yourself ].

	played := aTrack currentlyPlayed select: [ :each | 
		          each time + aTime + each duration
		          < Time millisecondClockValue ].

	played do: [ :each | 
		self nextPlayNoteOff: each onChannel: aTrack channel.
		"self wrapper ifNotNil: [self wrapper manageEvent: each ofType: 'NoteOff']."
		aTrack removeFromCurrentlyPlayed: each ].

	^ self yourself