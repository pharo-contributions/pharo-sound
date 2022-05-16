initialization
reset
	self submorphsDo: [:m | m == controlPanel ifFalse: [m reset]]