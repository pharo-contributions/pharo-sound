stepping and presenter
stop
	self submorphsDo: [:m | m == controlPanel ifFalse: [m stop]].
	SoundPlayer shutDown