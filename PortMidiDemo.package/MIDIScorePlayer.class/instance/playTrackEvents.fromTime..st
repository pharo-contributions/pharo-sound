playing
playTrackEvents: aTrack fromTime: aTime
	| nextEvent|
	"Plays MIDI notes events if they must be played."
	(aTrack nextEventIndex > aTrack events size) ifTrue: [ ^ self yourself ].
	nextEvent := aTrack events at: aTrack nextEventIndex.
	
	( nextEvent time + aTime < Time millisecondClockValue ) ifTrue: [ 
		nextEvent executeEventWithPlayer: self ].
	
	^ self yourself