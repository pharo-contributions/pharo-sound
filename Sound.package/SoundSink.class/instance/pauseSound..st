playing
pauseSound: aSound
	activeSoundsMutex critical: [
		activeSounds remove: aSound ifAbsent: []
	].