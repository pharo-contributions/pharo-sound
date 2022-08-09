initialization
initialize 
	self tracks: Dictionary new.
	self tempos: OrderedCollection new.
	self currentTempoIndex: 1.
	self doneTracks: OrderedCollection new.
	self modified: false.
	self time: 0.