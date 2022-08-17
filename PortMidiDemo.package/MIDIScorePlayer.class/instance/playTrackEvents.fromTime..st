playing
playTrackEvents: aTrack fromTime: aTime
	| nextEvent|
	(aTrack nextEventIndex > aTrack events size) ifTrue: [ ^ self yourself ].
	nextEvent := aTrack events at: aTrack nextEventIndex.
	
	( nextEvent time + aTime < Time millisecondClockValue ) ifTrue: [ 
		nextEvent executeEventWithPlayer: self ].
	
	^ self yourself