as yet unclassified
searchForNewNote: noteIndex inTrack: trackName
	| newNotes |
	newNotes := modifications select: [ :each | (each className = 'MIDIAddNoteEvent') and: (each trackName = trackName) ].
	^ newNotes at: (noteIndex - (score tracks at: trackName) events size) ifAbsent: [ ^ nil ]