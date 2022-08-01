as yet unclassified
filedScoreToScore: aFiledScore
"Converts a MIDI score obtained with a file reader method into a Score."
	| newScore tracks infos size|
	newScore := self new.
	infos := aFiledScore trackInfo.
	tracks := aFiledScore tracks.
	size := tracks size.
	1 to: size do: [ :index |
		newScore addTrack: (InstrumentScore filedTrackToInstrumentScore: (tracks at: index))
					named: (infos at: index).
		 ].
	^ newScore