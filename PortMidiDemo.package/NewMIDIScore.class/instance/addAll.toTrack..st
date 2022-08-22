modification
addAll: aNoteCollection toTrack: aTrackName
	"Add all notes of aNoteCollection into the track named aTrackName."
	( tracks at: aTrackName ) addAllToTrack: aNoteCollection