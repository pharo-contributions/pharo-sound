modifications
changeNoteDurationAt: aNoteIndex to: aNoteDuration
	(events at: aNoteIndex) duration: aNoteDuration.
	^ events at: aNoteIndex