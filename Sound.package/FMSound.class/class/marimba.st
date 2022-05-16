instruments
marimba
	"FMSound marimba play"
	"(FMSound majorScaleOn: FMSound marimba) play"

	| sound  env |
	sound := FMSound new modulation: 1 ratio: 0.98.
	sound addEnvelope: (VolumeEnvelope points: 	{0@1.0 . 10@0.3 . 40@0.1 . 80@0.02 . 120@0.1 . 160@0.02 . 220@0.0} loopStart: 4 loopEnd: 6).
	env := Envelope points: { 0@1.2 . 80@0.85 . 120@1.0 . 160@0.85 . 220@0.0} loopStart: 2 loopEnd: 4.
	env updateSelector: #modulation:.
	sound addEnvelope: env.
	^ sound setPitch: 220.0 duration: 1.0 loudness: 0.5
