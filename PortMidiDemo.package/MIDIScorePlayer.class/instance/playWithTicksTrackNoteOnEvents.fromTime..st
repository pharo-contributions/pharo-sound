playing
playWithTicksTrackNoteOnEvents: aTrack fromTime: aTime
	"Same as playTrackNoteOnEvents:fromTime: but to play MIDI files."
	| nextEvent|
	(aTrack nextEventIndex > aTrack events size) ifTrue: [ ^ self yourself ].
	nextEvent := aTrack events at: aTrack nextEventIndex.
	
	((nextEvent time * score millisecsPerTick) + aTime < Time millisecondClockValue) ifTrue: [ 
		self nextPlayNoteOn: nextEvent onChannel: aTrack channel.
		aTrack addToCurrentlyPlayed: nextEvent.
		aTrack nextEventIndex: aTrack nextEventIndex + 1 ].
	
	^ self yourself