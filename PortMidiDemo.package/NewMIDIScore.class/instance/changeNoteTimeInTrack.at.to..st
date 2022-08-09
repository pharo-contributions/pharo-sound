modification
changeNoteTimeInTrack: aTrackName at: aNoteIndex to: aNoteTime
	(tracks at: aTrackName) changeNoteTimeAt: aNoteIndex to: aNoteTime 