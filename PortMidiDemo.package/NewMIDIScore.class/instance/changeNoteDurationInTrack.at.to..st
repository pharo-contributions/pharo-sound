modification
changeNoteDurationInTrack: aTrackName at: aNoteIndex to: aNoteDuration
	"Changes the duration of a note at aNoteIndex in the track named aTrackName."
	^ (tracks at: aTrackName) changeNoteDurationAt: aNoteIndex to: aNoteDuration