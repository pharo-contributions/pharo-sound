playing
playTrackNoteOffEvents: aTrack fromTime: aTime

	| played |
	aTrack currentlyPlayed ifEmpty: [ 
		aTrack nextEventIndex > aTrack events size ifTrue: [ 
			self score doneTracks add: aTrack ].
		^ self yourself ].

	played := aTrack currentlyPlayed select: [ :each | 
		          each time + aTime + (self getRealNoteValues: each duration)
		          < Time millisecondClockValue ].

	played do: [ :each | 
		self nextPlayNoteOff: each onChannel: aTrack channel.
		aTrack removeFromCurrentlyPlayed: each ].

	^ self yourself