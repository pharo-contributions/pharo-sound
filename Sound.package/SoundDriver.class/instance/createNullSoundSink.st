accessing
createNullSoundSink
	^ NullSoundSink new
		startMixingProcessWithBufferSize: 1024 samplingRate: 11025 numchannels: 1;
		yourself