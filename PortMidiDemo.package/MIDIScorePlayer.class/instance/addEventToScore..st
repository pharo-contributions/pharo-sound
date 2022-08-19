adding
addEventToScore: anEvent
	| eventType |
	eventType := (anEvent at: 1).
	(eventType = 'PlayNote') ifTrue: [ 
			(self score tracks keys includes: (anEvent at: 3)) ifFalse: [ self addTrack: MIDITrack new named: (anEvent at: 3) ].
			(self score tracks at: (anEvent at: 3)) events add: (MIDINoteEvent new time: (anEvent at: 2) asInteger; trackName: (anEvent at: 3); noteValue: (anEvent at: 4) asInteger; duration: (anEvent at: 5) asInteger; velocity: (anEvent at: 6) asInteger)
		 ].
	(eventType = 'AddNote') ifTrue: [ 
			modifications add: (MIDIAddNoteEvent new time: (anEvent at: 2) asInteger; trackName: (anEvent at: 3); newNote:  (MIDINoteEvent new time: (anEvent at: 5) asInteger; noteValue: (anEvent at: 7) asInteger; trackName: (anEvent at: 6); duration: (anEvent at: 8) asInteger; velocity: (anEvent at: 9) asInteger))
		 ].
	((eventType = 'ModifyNote')) ifTrue: [ 
			modifications add: (MIDINoteModificationEvent new time: (anEvent at: 2) asInteger; noteIndex: (anEvent at: 4) asInteger; trackName: (anEvent at: 3); newNote: (MIDINoteEvent new time: (anEvent at: 6) asInteger; trackName: (anEvent at: 7); noteValue: (anEvent at: 8) asInteger; duration: (anEvent at: 9) asInteger; velocity: (anEvent at: 10) asInteger))
		 ].
	(eventType = 'RemoveNote') ifTrue: [ 
			modifications add: (MIDIRemoveNoteEvent new time: (anEvent at: 2) asInteger; trackName: (anEvent at: 3); noteIndex: (anEvent at: 4) asInteger)
		 ].