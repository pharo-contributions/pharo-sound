adding
addNewTrackWith: aNoteArray named: aName
	"Creates a new Score, adds aNoteArray into it and adds this score to the score collection."
	| aScore |
	aScore := InstrumentScore new.
	aNoteArray do: [ :note |
			aScore addNoteToTrack: (MIDINote new note: (Note perform: note); octave: MIDINote defaultOctave; duration: MIDINote defaultDuration )
		 ].
	tracks at: aName put: aScore