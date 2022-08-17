modifications
addToTrack: aTrackName event: aNote
	(self currentVersionIndex > 1 ) ifTrue: [ self setToModified addToTrack: aTrackName event: aNote ] ifFalse: [ self score addToTrack: aTrackName event: aNote ]