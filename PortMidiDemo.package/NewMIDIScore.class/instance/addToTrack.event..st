modification
addToTrack: aTrackName event: aNote
	"Adds a new event to the track named aTrackName."
	aNote trackName: aTrackName.
	(self tracks at: aTrackName ifAbsent: [
		self addTrack: (MIDITrack new) named: aTrackName.
		self tracks at: aTrackName
		]) addEventToTrack: aNote