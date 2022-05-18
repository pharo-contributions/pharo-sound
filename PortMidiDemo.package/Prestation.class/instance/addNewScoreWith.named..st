adding
addNewScoreWith: aNoteArray named: aName
	| aScore |
	aScore := Score new.
	aNoteArray do: [ :note |
			aScore addNoteToMelody: (NoteNotation new note: (Note perform: note); octave: NoteNotation defaultOctave; duration: 500 )
		 ].
	scores at: aName put: (aScore tempo: tempo; midiOut: midiOut)