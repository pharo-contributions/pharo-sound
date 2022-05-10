playing
isPlaying: aSound
	^ activeSoundsMutex critical: [
		activeSounds includes: aSound
	].