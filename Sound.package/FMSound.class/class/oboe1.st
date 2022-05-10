instruments
oboe1
	"FMSound oboe1 play"
	"(FMSound majorScaleOn: FMSound oboe1) play"

	| sound  |
	sound := FMSound new modulation: 1 ratio: 1.
	sound addEnvelope: (VolumeEnvelope points: {0@0.0 . 10@1.0 . 100@1.0 . 120@0.0} loopStart: 2 loopEnd: 3).
	^ sound setPitch: 440.0 duration: 1.0 loudness: 0.5
