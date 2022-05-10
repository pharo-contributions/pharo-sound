playing
pauseSound: aSound
	"Stop playing the given sound. Playing can be resumed from this point later."
	^ self currentSoundSink pauseSound: aSound
