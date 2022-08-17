adding
addEventToScore: anEvent
	| eventType |
	eventType := (anEvent at: 1).
	(eventType = 'PlayNote') ifTrue: [ 
			self addToTrack: (anEvent at: 4) event: (MIDINoteEvent new time: (anEvent at: 2) asInteger; trackName: (anEvent at: 4); noteValue: (anEvent at: 5) asInteger; duration: (anEvent at: 6) asInteger; velocity: (anEvent at: 7) asInteger)
		 ].
	(eventType = 'AddNote') ifTrue: [ 
			self addToTrack: (anEvent at: 4) event: (MIDIAddNoteEvent new time: (anEvent at: 2) asInteger; newNote:  (MIDINoteEvent new time: (anEvent at: 3) asInteger; noteValue: (anEvent at: 5) asInteger; trackName: (anEvent at: 4); duration: (anEvent at: 6) asInteger; velocity: (anEvent at: 7) asInteger))
		 ].
	((eventType = 'ChangeNoteDuration') or: [eventType = 'ChangeNoteValue']) ifTrue: [ 
			self addToTrack: (anEvent at: 5) event: (MIDINoteModificationEvent new time: (anEvent at: 2) asInteger; noteIndex: (anEvent at: 3) asInteger; trackName: (anEvent at: 5); newNote: (MIDINoteEvent new time: (anEvent at: 4) asInteger; trackName: (anEvent at: 5); noteValue: (anEvent at: 6) asInteger; duration: (anEvent at: 7) asInteger; velocity: (anEvent at: 8) asInteger))
		 ].
	(eventType = 'RemoveNote') ifTrue: [ 
			self addToTrack: (anEvent at: 3) event: (MIDIRemoveNoteEvent new time: (anEvent at: 2) asInteger; trackName: (anEvent at: 3); noteIndex: (anEvent at: 4) asInteger)
		 ].