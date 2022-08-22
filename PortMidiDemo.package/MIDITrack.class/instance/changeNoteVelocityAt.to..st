modifications
changeNoteVelocityAt: aNoteIndex to: aNoteVelocity
	"Changes the velocity of the note at aNoteIndex."
	(events at: aNoteIndex) velocity: aNoteVelocity