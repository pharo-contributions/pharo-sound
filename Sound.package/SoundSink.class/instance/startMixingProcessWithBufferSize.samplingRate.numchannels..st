mixing process
startMixingProcessWithBufferSize: theBufferSize samplingRate: theSamplingRate numchannels: numchannels
	self assert: numchannels >= 1.
	self assert: numchannels <= 2. "Until we support more than two channels."
	
	activeSounds := OrderedCollection new.
	activeSoundsMutex := Semaphore forMutualExclusion.
	buffer := numchannels = 1
		ifTrue: [ SoundBuffer newMonoSampleCount: theBufferSize]
		ifFalse: [ SoundBuffer newStereoSampleCount: theBufferSize].
	samplingRate := theSamplingRate.
	self startMixingProcess