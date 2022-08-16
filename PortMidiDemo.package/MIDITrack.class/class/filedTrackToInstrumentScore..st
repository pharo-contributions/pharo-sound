as yet unclassified
filedTrackToInstrumentScore: aFiledTrack
"Converts a track of a filed MIDI score into an InstrumentScore."
	| newTrack |
	newTrack := self new.
	aFiledTrack do: [ :each |
		each isNoteEvent ifTrue: [
				newTrack addEventToTrack: (MIDINoteEvent new noteValue: each midiNote; duration: each duration; velocity: each velocity; time: each time)
			]
		 ].
	^ newTrack