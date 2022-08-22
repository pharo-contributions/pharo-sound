playing
playWithTicksTrackNoteOffEvents: aTrack fromTime: aTime
	"Same as playTrackNoteOffEvents:fromTime: but to play MIDI files."
	| played |
	aTrack currentlyPlayed ifEmpty: [ 
		aTrack nextEventIndex > aTrack events size ifTrue: [ 
			self score addToDoneTracks: aTrack ].
		^ self yourself ].

	played := aTrack currentlyPlayed select: [ :each | 
		          (score millisecsPerTick * each time) + aTime + (score millisecsPerTick * each duration)
		          < Time millisecondClockValue ].

	played do: [ :each | 
		self nextPlayNoteOff: each onChannel: aTrack channel.
		aTrack removeFromCurrentlyPlayed: each ].

	^ self yourself