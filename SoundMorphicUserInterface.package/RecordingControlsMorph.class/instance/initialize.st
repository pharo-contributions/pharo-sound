initialization
initialize

	| r |
	super initialize.
	self hResizing: #shrinkWrap; vResizing: #shrinkWrap.
	borderWidth := 2.
	self listDirection: #topToBottom.
	recorder := SoundRecorder new.
	self addButtonRows.
	self addRecordLevelSlider.

	r := AlignmentMorph newRow vResizing: #shrinkWrap.
	r addMorphBack: self makeRecordMeter.
	self addMorphBack: r.
	self extent: 10@10.  "make minimum size"
