mixing process
mixingProcessLoop
	| bufferFlyingTime |
	
	bufferFlyingTime := buffer stereoSampleCount * 1000 // samplingRate // 3.
	[true] whileTrue: [
		| iterationStartTime iterationEndTime iterationDeltaTime delayTime nextRequiredSamples |
		iterationStartTime := Time microsecondClockValue.
		nextRequiredSamples := self computeNextRequiredSampleCount.
		nextRequiredSamples > 0 ifTrue: [
			self mixAndEnqueueNextAudioBufferOfSize: nextRequiredSamples.
		].

		iterationEndTime := Time microsecondClockValue.
		iterationDeltaTime := (iterationEndTime - iterationStartTime) // 1000.
		delayTime := bufferFlyingTime - iterationDeltaTime - 1.
		delayTime > 0 ifTrue: [ 
			(Delay forMilliseconds: bufferFlyingTime) wait
		].	
	]