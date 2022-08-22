modification
changeNoteTimeInTrack: aTrackName at: aNoteIndex to: aNoteTime
	"Changes the time the note at aNoteIndex in the track named aTrackName is played."
	(tracks at: aTrackName) changeNoteTimeAt: aNoteIndex to: aNoteTime 