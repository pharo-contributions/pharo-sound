modifications
changeNoteValueInTrack: trackName at: noteIndex to: noteValue
	| newNote |
	newNote := midiPlayer changeNoteValueInTrack: trackName at: noteIndex to: noteValue.
	self manageEvent: (MIDINoteModificationEvent new trackName: trackName; noteIndex: noteIndex; newNote: newNote ) ofType: 'ChangeNoteValue'