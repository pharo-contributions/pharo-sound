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
		 layoutInset: 3;
		 addMorph: self makeControls;
	initializeSoundColumn.
	self extent: 118 @ 150