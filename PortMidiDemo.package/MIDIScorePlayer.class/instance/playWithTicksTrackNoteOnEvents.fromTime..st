playing
playWithTicksTrackNoteOnEvents: aTrack fromTime: aTime
	| nextEvent|
	(aTrack nextEventIndex > aTrack events size) ifTrue: [ ^ self yourself ].
	nextEvent := aTrack events at: aTrack nextEventIndex.
	
	((nextEvent time * score millisecsPerTick) + aTime < Time millisecondClockValue) ifTrue: [ 
		Transcript show: 'Playing a note'; cr.
		self nextPlayNoteOn: nextEvent onChannel: aTrack channel.
		aTrack addToCurrentlyPlayed: nextEvent.
		aTrack nextEventIndex: aTrack nextEventIndex + 1 ].
	
	^ self yourself