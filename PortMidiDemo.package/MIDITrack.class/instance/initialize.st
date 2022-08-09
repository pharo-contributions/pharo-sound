initialization
initialize 
	self events: OrderedCollection new.
	self currentlyPlayed: OrderedCollection new.
	self nextEventIndex: 1.
	self muted: false.
	self channel: 0