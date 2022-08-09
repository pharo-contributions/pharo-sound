liveCoding
checkForChange

	| currentTime lastTime "nextVersion" maxIterationTime |
	currentTime := Time millisecondClockValue - firstStartTime.
	lastTime := (versions at: currentVersionIndex) time.
	maxIterationTime := self getCurrentScoreMaxIterationTime.

	[ ( currentVersionIndex < versions size ) and: 
	[(versions at: currentVersionIndex + 1) time between: lastTime and: currentTime + maxIterationTime] ] whileTrue: [ 
		currentVersionIndex := currentVersionIndex + 1.
		score := versions at: currentVersionIndex ].