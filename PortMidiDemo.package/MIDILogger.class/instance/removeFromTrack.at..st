modifications
removeFromTrack: trackName at: index
	midiPlayer removeFromTrack: trackName at: index.
	self manageEvent: (MIDIRemoveNoteEvent new trackName: trackName; noteIndex: index) ofType: 'RemoveNote'