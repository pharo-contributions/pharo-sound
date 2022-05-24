instance creation
newTrackWith: aNoteArray
	"Creates a new Score with aNoteArray and returns it."
	| aTrack |
	aTrack := self new.
	aNoteArray do: [ :note |
			aTrack addNoteToTrack: (MIDINote new note: (Note perform: note); octave: MIDINote defaultOctave; duration: MIDINote defaultDuration )
		 ].
	^ aTrack