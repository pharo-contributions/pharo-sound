modification
unmuteTrack: aTrackName
	"unmutes a track in the score."
	(tracks at: aTrackName) muted: false