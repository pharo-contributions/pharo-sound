instruments
randomWeird2
	"FMSound randomWeird2 play"

	| sound |
	sound := FMSound new.
	sound addEnvelope: (VolumeEnvelope exponentialDecay: 0.96).
	sound addEnvelope: (PitchEnvelope exponentialDecay: 0.98).
	^ sound setPitch: (150 + 2000 atRandom) duration: 2.0 loudness: 0.5
