instruments
brass1
	"FMSound brass1 play"
	"(FMSound lowMajorScaleOn: FMSound brass1) play"

	| sound  env |
	sound := FMSound new modulation: 0 ratio: 1.
	sound addEnvelope: (VolumeEnvelope 
								points: { 0@0.0 . 30@0.8 . 90@1.0  .  120@0.9. 220@0.7 . 320@0.9 . 360@0.0} 
								loopStart: 4 loopEnd: 6).
	env := Envelope 
				points: { 0@0.5 . 60@1.0 . 120@0.8 . 220@0.65 . 320@0.8 . 360@0.0} 
				loopStart: 3 loopEnd: 5.
	env target: sound; updateSelector: #modulation:; scale: 5.0.
	sound addEnvelope: env.
	^ sound setPitch: 220.0 duration: 1.0 loudness: 0.5
