Sonograms are imageMorphs that will repeatedly plot arrays of values as black on white columns moving to the right in time and scrolling left as necessary.

	| s data |
	s := SonogramMorph new 
			extent: 200@50
			minVal: 0.0 maxVal: 1.0 
			scrollDelta: 20.
	World addMorph: s.
	data := (1 to: 133) collect: [:i | 0.0].
	1 to: 300 do:
		[:i | data at: (i\\133)+1 put: 1.0.
		s plotColumn: data.
		data at: (i\\133)+1 put: 0.0.
		World doOneCycleNow].