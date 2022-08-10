playing
playWithTicksTrackNoteOffEvents: aTrack fromTime: aTime

	| played |
	aTrack currentlyPlayed ifEmpty: [ 
		aTrack nextEventIndex > aTrack events size ifTrue: [ 
			self score doneTracks add: aTrack ].
		^ self yourself ].

	played := aTrack currentlyPlayed select: [ :each | 
		          (score millisecsPerTick * each time) + aTime + (score millisecsPerTick * each duration)
		          < Time millisecondClockValue ].

	played do: [ :each | 
		self nextPlayNoteOff: each onChannel: aTrack channel.
		aTrack removeFromCurrentlyPlayed: each ].

	^ self yourself