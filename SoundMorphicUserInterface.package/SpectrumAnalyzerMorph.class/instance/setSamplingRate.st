menu and buttons
setSamplingRate
	"Set the sampling rate to be used for incoming sound data."

	| aMenu rate on choices |
	choices := #(11025 22050 44100).
	rate := MenuMorph 
				chooseFrom: choices values: choices lines: #() title: ('Sampling rate (currently {1})' translated format:{soundInput samplingRate}).
	rate ifNil: [^ self].
	on := soundInput isRecording.
	self stop.
	soundInput samplingRate: rate.
	self resetDisplay.
	on ifTrue: [self start].

