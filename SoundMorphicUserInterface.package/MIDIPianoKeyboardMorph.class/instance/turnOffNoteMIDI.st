accessing
turnOffNoteMIDI

	| aPartition |
	
	soundPlaying notNil ifTrue: [
		soundPlaying isInteger ifTrue: [
			aPartition := Partition new tempo: 60.
			aPartition openMidiOutWithDevice: aPartition defaultOutput.
			aPartition nextPlayNote: (Note new noteValue: soundPlaying).]].
	soundPlaying := nil.
	aPartition closeMidiOut
