nil
durationInTicks
	
	| t |
	t := 0.
	tracks, {ambientTrack} do:
		[:track |
		track do:
			[:n | (n isNoteEvent)
				ifTrue: [t := t max: n endTime]
				ifFalse: [t := t max: n time]]].
	^ t
