playing
playSampledSound: samples rate: rate

	self soundEnabled ifTrue: [
		(SampledSound samples: samples samplingRate: rate) play]