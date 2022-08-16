modifications
changeNoteDurationInTrack: trackName at: noteIndex to: durationValue
	| newNote |
	newNote := midiPlayer changeNoteDurationInTrack: trackName at: noteIndex to: durationValue.
	self manageEvent: (MIDINoteModificationEvent new trackName: trackName; noteIndex: noteIndex; newNote: newNote ) ofType: 'ChangeNoteDuration'