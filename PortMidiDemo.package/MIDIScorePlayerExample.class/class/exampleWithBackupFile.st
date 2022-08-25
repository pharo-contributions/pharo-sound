examples
exampleWithBackupFile
	<example>
	| aScorePlayer pr |
	aScorePlayer := MIDILogger new.
	aScorePlayer openPerformanceNamed: 'examplePlayWithNewScore.perf'.

	pr := aScorePlayer playScore.
	(Delay forSeconds: 7) wait.
	aScorePlayer changeNoteValueInTrack: '1st bass' at: 6 to: 27.
	(Delay forSeconds: 7) wait.
	aScorePlayer removeFromTrack: '1st bass' at: 6.
	aScorePlayer stopPlaying: pr