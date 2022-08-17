modification
addToTrack: aTrackName event: aNote
	aNote trackName: aTrackName.
	(self tracks at: aTrackName ifAbsent: [
		self addTrack: (MIDITrack new) named: aTrackName.
		self tracks at: aTrackName
		]) addEventToTrack: aNote