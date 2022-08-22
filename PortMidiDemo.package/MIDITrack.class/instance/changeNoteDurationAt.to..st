modifications
changeNoteDurationAt: aNoteIndex to: aNoteDuration
	"Changes the duration of the note at aNoteIndex."
	(events at: aNoteIndex) duration: aNoteDuration.
	^ events at: aNoteIndex