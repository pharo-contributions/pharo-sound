instruments
oboe2
	"FMSound oboe2 play"
	"(FMSound majorScaleOn: FMSound oboe2) play"

	| sound  |
	sound := FMSound new modulation: 1 ratio: 1.
	sound addEnvelope: (VolumeEnvelope points: {  0@0 . 20@1.0 . 100@1.0 . 120@0.0} loopStart: 2 loopEnd: 3).
	sound addEnvelope: (RandomEnvelope for: #pitch:).
	^ sound setPitch: 440.0 duration: 1.0 loudness: 0.5
