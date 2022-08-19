as yet unclassified
searchForNewNote: noteIndex InTrack: trackName
	| newNotes |
	^ newNotes := modifications select: [ :each | (each className = 'MIDIAddNoteEvent') and: (each trackName = trackName) ]
	