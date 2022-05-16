initialization
initialize
"initialize the state of the receiver"
	super initialize.
""
	self listDirection: #topToBottom.
	soundInput := SoundInputStream new samplingRate: 22050.
	fft := FFT new: 512.
	displayType := 'sonogram'.
	self hResizing: #shrinkWrap.
	self vResizing: #shrinkWrap.
	self addButtonRow.
	self addLevelSlider.
	self addMorphBack: self makeLevelMeter.
	self addMorphBack: (Morph new extent: 10 @ 10;
			 color: Color transparent).
	"spacer"
	self resetDisplay