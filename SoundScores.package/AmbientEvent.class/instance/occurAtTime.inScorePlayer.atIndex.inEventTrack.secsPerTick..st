action
occurAtTime: ticks inScorePlayer: player atIndex: index inEventTrack: track secsPerTick: secsPerTick
	(target isNil or: [selector isNil]) ifTrue:
		[morph ifNil: [^ self].
		^ morph encounteredAtTime: ticks inScorePlayer: player atIndex: index
				inEventTrack: track secsPerTick: secsPerTick].
	target perform: selector withArguments: arguments