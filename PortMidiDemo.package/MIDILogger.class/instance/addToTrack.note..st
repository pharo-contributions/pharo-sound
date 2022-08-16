modifications
addToTrack: trackName note: aNote
	midiPlayer addToTrack: trackName note: aNote.
	self manageEvent: (MIDIAddNoteEvent new trackName: trackName; newNote: aNote) ofType: 'AddNote'