as yet unclassified
filedScoreToScore: aFiledScore
"Converts a MIDI score obtained with a file reader method into a Score."
	| newScore tracks infos size tempos|
	newScore := self new.
	infos := aFiledScore trackInfo.
	tracks := aFiledScore tracks.
	size := tracks size.
	tempos := OrderedCollection new.
	aFiledScore tempoMap do: [ :each |
		tempos add: (MIDITempoEvent new time: each time; tempo: (each tempo / 1000)) ].
	newScore tempos: tempos.
	newScore ticksPerQuarterNote: aFiledScore ticksPerQuarterNote.
	newScore millisecsPerTick: newScore millisecsPerTick.
	1 to: size do: [ :index |
		newScore addTrack: (MIDITrack filedTrackToInstrumentScore: (tracks at: index))
					named: (infos at: index).
		 ].
	^ newScore