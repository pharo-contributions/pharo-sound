modification
addTrack: aTrack named: aString
	"Adds a new score to the score collection."
	(self tracks size = 16) ifTrue: [ ^ self ].
	aTrack channel: self tracks size.
	tracks at: aString put: aTrack