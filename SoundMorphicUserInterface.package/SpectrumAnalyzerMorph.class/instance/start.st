stepping and presenter
start
	"Start displaying sound data."

	displayType = 'signal'
		ifTrue: [soundInput bufferSize: graphMorph width - (2 * graphMorph borderWidth)]
		ifFalse: [soundInput bufferSize: fft n].
	soundInput startRecording.
