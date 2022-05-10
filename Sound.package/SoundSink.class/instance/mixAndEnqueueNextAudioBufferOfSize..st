mixing process
mixAndEnqueueNextAudioBufferOfSize: sampleCount
	| volume |
	"TODO: look into placing volume calculations somwhere else, with less action"
	volume := (SDL2SoundSink masterVolume * 100 asInteger).
	buffer primFill: 0.
	activeSoundsMutex critical: [
		activeSounds := activeSounds select: [ :snd | snd samplesRemaining > 0 ].
		activeSounds do: [ :each |
			each playSampleCount: sampleCount into: buffer startingAt: 1
		].
		activeSounds ifNotEmpty: [ buffer normalized: volume ].
	].
	
	self doEnqueueAudioBuffer: buffer count: sampleCount.
