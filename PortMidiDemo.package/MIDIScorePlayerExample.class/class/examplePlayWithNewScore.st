examples
examplePlayWithNewScore
	<example>
	| aScorePlayer score track note1 note2 note3 note4 note5 note6 pr |
	
	track := MIDITrack new.
	note1 := MIDINoteEvent new noteValue: 60 ; duration: 500; time: 0; velocity: 64.
	note2 := MIDINoteEvent new noteValue: 62 ; duration: 500; time: 1000; velocity: 64.
	note3 := MIDINoteEvent new noteValue: 64 ; duration: 500; time: 2000; velocity: 64.
	note4 := MIDINoteEvent new noteValue: 65 ; duration: 500; time: 3000; velocity: 64.
	note5 := MIDINoteEvent new noteValue: 67 ; duration: 500; time: 4000; velocity: 64.
	track events add: note1.
	track events add: note2.
	track events add: note3.
	track events add: note4.
	track events add: note5.
	
	score := NewMIDIScore new.
	score addTrack: track named: '1st bass'.

	aScorePlayer := MIDIScorePlayer logger.
	aScorePlayer logName: 'examplePlayWithNewScore'.
	aScorePlayer score: score.

	pr := aScorePlayer playScore.
	(Delay forSeconds: 3) wait.
	note6 := MIDINoteEvent new noteValue: 68 ; duration: 500; time: 5000; velocity: 64.
	aScorePlayer addToTrack: '1st bass' event: note6.
	(Delay forSeconds: 3) wait.
	aScorePlayer changeNoteValueInTrack: '1st bass' at: 3 to: 63.
	(Delay forSeconds: 3) wait.
	aScorePlayer changeNoteDurationInTrack: '1st bass' at: 6 to: 1000.
	(Delay forSeconds: 3) wait.
	aScorePlayer stopPlaying: pr.