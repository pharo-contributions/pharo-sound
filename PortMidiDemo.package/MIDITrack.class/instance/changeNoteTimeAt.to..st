modifications
changeNoteTimeAt: aNoteIndex to: aNoteTime
	"Changes the time after which the note at aNoteIndex is played."
	(events at: aNoteIndex) time: aNoteTime