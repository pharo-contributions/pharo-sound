utilities
hangUpWarning: count
	"AbstractSound hangUpWarning: 20"
	| m s |
	s := SequentialSound new.
	m := MixedSound new.
	m	add: (FMSound pitch: 1400 duration: 0.1 loudness: 0.5);
		add: (FMSound pitch: 2060 duration: 0.1 loudness: 0.5).
	s add: m; add: (FMSound pitch: 1 duration: 0.1 loudness: 0).
	^ (RepeatingSound repeat: s count: count) play

