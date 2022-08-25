examples
exampleWithBackupFile
	<example>
	| aLogger pr |
	aLogger := MIDILogger new.
	aLogger openPerformanceNamed: 'examplePlayWithNewScore.perf'.

	pr := aLogger playScore.
	(Delay forSeconds: 7) wait.
	aLogger changeNoteValueInTrack: '1st bass' at: 6 to: 27.
	(Delay forSeconds: 7) wait.
	aLogger removeFromTrack: '1st bass' at: 6.
	aLogger stopPlaying: pr
	"The file examplePlayWithNewScore.perf will save the modifications."