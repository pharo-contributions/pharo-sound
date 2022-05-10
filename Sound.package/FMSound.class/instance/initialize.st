initialization
initialize

	super initialize.
	waveTable := SineTable.
	scaledWaveTableSize := waveTable size * ScaleFactor.
	self setPitch: 440.0 duration: 1.0 loudness: 0.2.
