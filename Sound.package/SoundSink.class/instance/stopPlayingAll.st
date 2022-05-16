playing
stopPlayingAll
	activeSoundsMutex critical: [
		activeSounds removeAll
	].