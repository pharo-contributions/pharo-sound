liveCoding
checkForTempoChange
	(score currentTempoIndex < score tempos size) & [(score tempos at: score currentTempoIndex + 1 ) time + firstStartTime < Time millisecondClockValue] ifTrue: [ 
		score currentTempoIndex: score currentTempoIndex + 1 ]