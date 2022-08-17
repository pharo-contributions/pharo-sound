modifications
addToTrack: trackName event: aNote
	midiPlayer addToTrack: trackName event: aNote.
	self manageEvent: (MIDIAddNoteEvent new trackName: trackName; newNote: aNote) ofType: 'AddNote'