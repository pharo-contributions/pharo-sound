playing
stopMixingProcess
	mixingProcess ifNil: [ ^ self ].
	mixingProcess terminate.
	mixingProcess := nil.
	self pauseAudioDeviceSink