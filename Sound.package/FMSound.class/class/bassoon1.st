instruments
bassoon1
	"FMSound bassoon1 play"
	"(FMSound lowMajorScaleOn: FMSound bassoon1) play"

	| sound  env |
	sound := FMBassoonSound new ratio: 1.
	
	sound addEnvelope: (VolumeEnvelope 
			points: { 0@0.0 . 40@0.45 . 90@1.0 . 180@0.9 .  270@1.0 . 320@0.0} loopStart: 3 loopEnd: 5).

	env := Envelope 
			points: {0@0.2 . 40@0.9 . 90@0.6 . 270@0.6.  320@0.5} loopStart: 3 loopEnd: 4.
	env updateSelector: #modulation:; scale: 5.05.
	sound addEnvelope: env.

	^ sound setPitch: 220.0 duration: 1.0 loudness: 0.5
