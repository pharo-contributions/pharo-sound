instruments
organ1
	"FMSound organ1 play"
	"(FMSound majorScaleOn: FMSound organ1) play"

	| sound |
	sound := self new.
	sound addEnvelope: 
			(VolumeEnvelope 
				points: {0@0 . 60@1.0 . 110@0.8 . 200@1.0 . 250@0.0} 
				loopStart: 2 
				loopEnd: 4).
	sound setPitch: 440.0 duration: 1.0 loudness: 0.5.
	^ sound
