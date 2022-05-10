instruments
flute2
	"FMSound flute2 play"
	"(FMSound majorScaleOn: FMSound flute2) play"

	| sound  |
	sound := FMSound new.
	sound addEnvelope: (VolumeEnvelope points: {0@0 . 20@1.0 . 100@1.0 . 120@0.0} loopStart: 2 loopEnd: 3).
	sound addEnvelope: (RandomEnvelope for: #pitch:).
	^ sound setPitch: 440.0 duration: 1.0 loudness: 0.5
