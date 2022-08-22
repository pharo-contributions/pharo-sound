modifications
addToTrack: aTrackName event: aNote
	"Adds a note to the track named aTrackName."
	 | eventTime |
	eventTime := Time millisecondClockValue - self firstStartTime.
	aNote trackName: aTrackName.
	 self insertModification: (MIDIAddNoteEvent new time: eventTime; trackName: aTrackName; newNote: aNote)