modification
changeNoteValueInTrack: aTrackName at: aNoteIndex to: aNoteValue
	^ (tracks at: aTrackName) changeNoteValueAt: aNoteIndex to: aNoteValue