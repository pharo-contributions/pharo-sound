modification
removeFromTrack: aTrackName at: aNoteIndex
	"Removes a note at aNoteIndex from the track named aTrackName."
	(self tracks at: aTrackName ) removeFromTrackAt: aNoteIndex