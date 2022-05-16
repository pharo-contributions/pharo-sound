instruments
randomWeird1
	"FMSound randomWeird1 play"

	| sound  |
	sound := FMSound new.
	sound addEnvelope: (VolumeEnvelope exponentialDecay: 0.96).
	sound addEnvelope: (PitchEnvelope points: { 0@0 . 100@1.0 . 250@0.7 . 400@1.0 . 500@0} loopStart: 2 loopEnd: 4).
	^ sound setPitch: (150 + 2000 atRandom) duration: 2.0 loudness: 0.5
