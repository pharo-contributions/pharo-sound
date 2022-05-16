instruments
clarinet2
	"FMSound clarinet2 play"
	"(FMSound lowMajorScaleOn: FMSound clarinet2) play"

	| sound  env |
	sound := FMClarinetSound new modulation: 0 ratio: 2.
	sound addEnvelope: (VolumeEnvelope 
								points: { 0@0.0 . 60@1.0 . 310@1.0 . 350@0.0} 
								loopStart: 2 loopEnd: 3).

	env := Envelope 
			points: { 0@0.0167 . 60@0.106 . 310@0.106 . 350@0.0 } 
			loopStart: 2 loopEnd: 3.
	env updateSelector: #modulation:; scale: 10.0.
	sound addEnvelope: env.

	^ sound setPitch: 220.0 duration: 1.0 loudness: 0.5

