playing
play
	self submorphsDo: [:m | m == controlPanel ifFalse: [m play]]