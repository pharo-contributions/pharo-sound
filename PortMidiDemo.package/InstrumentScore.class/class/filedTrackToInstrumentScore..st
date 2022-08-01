as yet unclassified
filedTrackToInstrumentScore: aFiledTrack
"Converts a track of a filed MIDI score into an InstrumentScore."
	| newTrack |
	newTrack := self new.
	aFiledTrack do: [ :each |
		each isNoteEvent ifTrue: [
				newTrack addNoteToTrack: (MIDINote new midiKey: each midiKey; duration: each duration; velocity: each velocity)
			]
		 ].
	^ newTrack