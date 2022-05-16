initialization
closeMIDIPort

	midiSynth isOn ifTrue: [midiSynth stopMIDITracking].
	midiSynth closeMIDIPort.
