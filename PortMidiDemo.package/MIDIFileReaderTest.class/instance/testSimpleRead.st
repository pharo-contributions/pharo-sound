resources
testSimpleRead

	| reader |
	reader := MIDIFileReader new readMIDIFrom: (ZnBase64Encoder new decode: self  letitbeMidiEncoded) readStream.
	self assert: reader maxNoteTicks equals: 18432.
	self assert: reader ticksPerQuarter equals: 384.
	self assert: reader trackInfo asArray equals: #('LETITBE.M
' 'Electric Bass 1' 'Percussive Organ' 'Pan Flute' 'Choir Ahhs' 'Electric Guitar 2' 'Overdrive Guitar' '')