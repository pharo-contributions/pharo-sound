adding
addNewTrackWith: aNoteArray named: aName
	"Creates a new Score, adds aNoteArray into it and adds this score to the score collection."
	| aTrack |
	(self tracks size = 16) ifTrue: [ ^ self ].
	aTrack := InstrumentScore new.
	aNoteArray do: [ :note |
			aTrack addNoteToTrack: (MIDINote new note: (Note perform: note); octave: MIDINote defaultOctave; duration: MIDINote defaultDuration )
		 ].
	aTrack channel: self tracks size + 1.
	tracks at: aName put: aTrack