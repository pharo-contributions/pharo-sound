initialization
initialize
	super initialize.
	self extent: 550@350.
	self makeControlPanel.
	self addMorph: controlPanel.
	self addMorph: ((SoundLoopMorph newBounds: (10@40 extent: 128@128)) extent: 128@128).
	self addMorph: ((SoundLoopMorph newBounds: (10@200 extent: 512@128)) extent: 512@128).