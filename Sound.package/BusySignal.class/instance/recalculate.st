operation
recalculate

	| m s |
	s := SequentialSound new.
	m := MixedSound new.
	m	add: (FMSound pitch: 480 duration: 0.5 loudness: 0.5);
		add: (FMSound pitch: 620 duration: 0.5 loudness: 0.5).
	s add: m.
	s add: (FMSound pitch: 1 duration: 0.5 loudness: 0).
	^ (RepeatingSound repeat: s count: count).
