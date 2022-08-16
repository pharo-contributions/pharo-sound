playing
playTrackNoteOnEvents: aTrack fromTime: aTime
	| nextEvent|
	(aTrack nextEventIndex > aTrack events size) ifTrue: [ ^ self yourself ].
	nextEvent := aTrack events at: aTrack nextEventIndex.
	
	( nextEvent time + aTime < Time millisecondClockValue ) ifTrue: [ 
		self nextPlayNoteOn: nextEvent onChannel: aTrack channel.
		self wrapper isNil ifFalse: [ self wrapper manageNoteEvent: nextEvent ].
		aTrack addToCurrentlyPlayed: nextEvent.
		aTrack nextEventIndex: aTrack nextEventIndex + 1 ].
	
	^ self yourself