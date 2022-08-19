modifications
addToTrack: aTrackName event: aNote
	 | eventTime |
	 eventTime := Time millisecondClockValue - self firstStartTime.
	aNote trackName: aTrackName.
	 modifications add: (MIDIAddNoteEvent new time: eventTime; trackName: aTrackName; newNote: aNote)