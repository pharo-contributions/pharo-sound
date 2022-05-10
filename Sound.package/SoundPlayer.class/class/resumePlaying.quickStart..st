playing
resumePlaying: aSound quickStart: quickStart
	"Start playing the given sound without resetting it; it will resume playing from where it last stopped. If quickStart is true, then try to start playing the given sound immediately."

	| doQuickStart |
	BaseSoundSystem soundEnabled ifFalse: [^ self].
	doQuickStart := quickStart.
	BaseSoundSystem soundQuickStart ifFalse: [doQuickStart := false].
	self currentSoundSink resumePlaying: aSound quickStart: doQuickStart