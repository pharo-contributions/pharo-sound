liveCoding
checkForTempoChange
	((score currentTempoIndex < score tempos size) and: [((score tempos at: score currentTempoIndex + 1 ) time * score millisecsPerTick + firstStartTime) < Time millisecondClockValue]) ifTrue: [ 
		score currentTempoIndex: score currentTempoIndex + 1 ]