playing
resumePlaying: aSound quickStart: doQuickStart
	activeSoundsMutex critical: [
		(activeSounds includes: aSound) ifFalse: [
			activeSounds add: aSound
		]
	].