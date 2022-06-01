initialization
initialize
	self tracks: Dictionary new.
	self tempo: self class defaultTempo.
	self modified: false