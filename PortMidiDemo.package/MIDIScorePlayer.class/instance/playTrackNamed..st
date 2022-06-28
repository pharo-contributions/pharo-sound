playing
playTrackNamed: aName
	"This method is called when there is only one track to play ( or with a multi-thread code )."
	self playTrack: (self score at: aName)