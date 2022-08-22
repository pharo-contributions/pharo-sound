modification
changeNoteValueInTrack: aTrackName at: aNoteIndex to: aNoteValue
	"Changes the value of a note at aNoteIndex in the track named aTrackName."
	^ (tracks at: aTrackName) changeNoteValueAt: aNoteIndex to: aNoteValue