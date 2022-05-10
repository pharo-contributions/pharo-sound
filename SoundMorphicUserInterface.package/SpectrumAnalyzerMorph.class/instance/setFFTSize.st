menu and buttons
setFFTSize
	"Set the size of the FFT used for frequency analysis."

	|  choices choice on  |
	choices := #(128 256 512 1024).
	choice := MenuMorph 
				chooseFrom: choices values: choices lines: #() title:  ('FFT size (currently {1})' translated format:{fft n}).
	choice ifNil: [^ self].	
	on := soundInput isRecording.
	self stop.
	fft := FFT new: choice.
	self resetDisplay.
	on ifTrue: [self start].
