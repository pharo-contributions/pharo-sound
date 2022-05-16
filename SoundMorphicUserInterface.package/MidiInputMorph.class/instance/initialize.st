initialization
initialize
	"initialize the state of the receiver"
	super initialize.
	""
	self listDirection: #topToBottom;
	  wrapCentering: #center;
		 cellPositioning: #topCenter;
	  hResizing: #spaceFill;
	  vResizing: #spaceFill;
	  layoutInset: 3.
	midiPortNumber := nil.
	midiSynth := MIDISynth new.
	instrumentSelector := Array new: 16.
	self removeAllMorphs.
	self addMorphBack: self makeControls.
	self addMorphBack: (AlignmentMorph newColumn color: color;
			 layoutInset: 0).
	self addChannelControlsFor: 1.
	self extent: 20 @ 20