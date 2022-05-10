accessing
toggleOnOff

	midiSynth isOn
		ifTrue: [
			midiSynth stopMIDITracking]
		ifFalse: [
			midiPortNumber ifNil: [self setMIDIPort].
			midiPortNumber ifNil: [midiPortNumber := 0].
			midiSynth midiPort: (SimpleMIDIPort openOnPortNumber: midiPortNumber).
			midiSynth startMIDITracking].
