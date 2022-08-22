modification
changeNoteVelocityInTrack: aTrackName at: aNoteIndex to: aNoteVelocity
	"Changes the velocity of a note at aNoteIndex in the track named aTrackName."
	(tracks at: aTrackName) changeNoteVelocityAt: aNoteIndex to: aNoteVelocity 