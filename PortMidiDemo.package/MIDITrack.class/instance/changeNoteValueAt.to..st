modifications
changeNoteValueAt: aNoteIndex to: aNoteValue
	"Changes the MIDI value of the note at aNoteIndex."
	(events at: aNoteIndex) noteValue: aNoteValue.
	^ events at: aNoteIndex