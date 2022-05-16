playing
waitUntilDonePlaying: aSound
	self flag: 'TODO: Use a monitor here'.
	[activeSoundsMutex critical: [activeSounds includes: aSound]]
		whileTrue: [(Delay forMilliseconds: 100) wait].
