playing
playTrackNamed: aName
	"This method is called when there is only one track to play."
	self playTrack: (self score at: aName)