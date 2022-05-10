instruments
brass2
	"FMSound brass2 play"
	"(FMSound lowMajorScaleOn: FMSound brass2) play"

	| sound  env |
	sound := FMSound new modulation: 1 ratio: 1.
	sound addEnvelope: (VolumeEnvelope 
							points: {  0@0.0 . 20@1.0 . 40@0.9 . 100@0.7 . 160@0.9 . 200@0.0 } 
							loopStart: 3 loopEnd: 5).
	env := Envelope 
				points: {0@0.5 . 30@1.0 . 40@0.8 . 100@0.7 . 160@0.8 . 200@0.0} 
				loopStart: 3 loopEnd: 5.
	env updateSelector: #modulation:; scale: 5.0.
	sound addEnvelope: env.
	^ sound setPitch: 220.0 duration: 1.0 loudness: 0.5
