playing
playTrackNoteOnEvents: aTrack fromTime: aTime
	| nextEvent |
	nextEvent := aTrack events at: aTrack nextEventIndex.
	midiPlayer playTrackNoteOnEvents: aTrack fromTime: aTime.
	Transcript show: 'Playing a Note heeeeere'; cr.
	(nextEvent = aTrack events at: aTrack nextEventIndex ) ifTrue:[
			self manageNoteEvent: nextEvent
		]