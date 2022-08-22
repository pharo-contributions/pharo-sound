playing
playTrackNoteOffEvents: aTrack fromTime: aTime
	"Stops notes that are currently played if needed."
	| played |
	aTrack currentlyPlayed ifEmpty: [ 
		(aTrack nextEventIndex > aTrack events size) ifTrue: [ 
			self score addToDoneTracks: aTrack ].
		^ self yourself ].

	played := aTrack currentlyPlayed select: [ :each | 
		          each time + aTime + each duration
		          < Time millisecondClockValue ].

	played do: [ :each | 
		self nextPlayNoteOff: each onChannel: aTrack channel.
		aTrack removeFromCurrentlyPlayed: each ].

	^ self yourself