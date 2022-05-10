instruments
mellowBrass
	"FMSound mellowBrass play"
	"(FMSound lowMajorScaleOn: FMSound mellowBrass) play"

	| sound  env |
	sound := FMSound new modulation: 0 ratio: 1.
	sound addEnvelope: (VolumeEnvelope points: 	{ 0@0.0 . 70@0.325 . 120@0.194 . 200@0.194 . 320@0.194 . 380@0.0} loopStart: 3 loopEnd: 5).
	env := Envelope points: { 0@0.1 . 70@0.68 . 120@0.528 . 200@0.519 . 320@0.528 . 380@0.0} loopStart: 3 loopEnd: 5.
	env updateSelector: #modulation:; scale: 5.0.
	sound addEnvelope: env.
	^ sound setPitch: 220.0 duration: 1.0 loudness: 0.5
