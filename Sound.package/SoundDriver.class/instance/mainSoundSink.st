accessing
mainSoundSink
	^ mutex critical: [
		mainSoundSink ifNil: [ mainSoundSink := self createMainSoundSink ]
	]