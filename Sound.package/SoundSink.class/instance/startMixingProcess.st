mixing process
startMixingProcess
	mixingProcess := [ self mixingProcessLoop ] newProcess.
	mixingProcess priority: Processor userInterruptPriority.
	mixingProcess resume.
	self resumeAudioDeviceSink.
