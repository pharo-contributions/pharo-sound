playing
waitUntilDonePlaying: aSound
	"Wait until the given sound is no longer playing."
	self currentSoundSink waitUntilDonePlaying: aSound.
