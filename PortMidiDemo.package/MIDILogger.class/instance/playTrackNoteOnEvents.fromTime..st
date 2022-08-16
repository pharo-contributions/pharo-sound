playing
playTrackNoteOnEvents: aTrack fromTime: aTime
	| nextEvent |
	nextEvent := aTrack events at: aTrack nextEventIndex.
	midiPlayer playTrackNoteOnEvents: aTrack fromTime: aTime.
	(nextEvent = aTrack events at: aTrack nextEventIndex ) ifTrue:[
			self manageNoteEvent: nextEvent
		]