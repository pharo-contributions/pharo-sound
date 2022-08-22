modification
addTrack: aTrack named: aString
	"Adds a new track to the score."
	(self tracks size = 16) ifTrue: [ ^ self ].
	aTrack channel: self tracks size.
	tracks at: aString put: aTrack.
	aTrack events do: [ :noteEvent |
		noteEvent trackName: aString. ]