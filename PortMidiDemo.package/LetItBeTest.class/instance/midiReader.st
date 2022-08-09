resources
midiReader

	^ MIDIFileReader new readMIDIFrom:
		  (ZnBase64Encoder new decode: self letitbeMidiEncoded) readStream