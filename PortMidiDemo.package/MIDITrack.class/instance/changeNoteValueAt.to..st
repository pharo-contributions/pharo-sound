modifications
changeNoteValueAt: aNoteIndex to: aNoteValue
	(events at: aNoteIndex) noteValue: aNoteValue.
	^ events at: aNoteIndex