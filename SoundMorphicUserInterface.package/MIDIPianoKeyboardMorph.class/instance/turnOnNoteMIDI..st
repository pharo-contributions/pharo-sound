accessing
turnOnNoteMIDI: midiKey
	
	| aPartition |
	
	aPartition := Partition new tempo: 60.
	aPartition openMidiOutWithDevice: aPartition defaultOutput.
	aPartition nextPlayNote: (Note new noteValue: midiKey).
	soundPlaying := midiKey.
	aPartition closeMidiOut
