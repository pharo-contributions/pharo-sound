modifications
changeNoteTimeInTrack: aTrackName at: aNoteIndex to: aNoteTime
	"Changes the time after which the note at aNoteIndex in the track named aTrackName must be played."
	self score changeNoteTimeInTrack: aTrackName at: aNoteIndex to: aNoteTime