instruments
pluckedElecBass
	"FMSound pluckedElecBass play"
	"(FMSound lowMajorScaleOn: FMSound pluckedElecBass) play"

	| soound  env |
	soound := self new modulation: 1 ratio: 3.0.
	soound addEnvelope: (VolumeEnvelope 
								points: { 0@0.4 . 20@1.0 . 30@0.6 . 100@0.6 . 130@0.0} loopStart: 3 loopEnd: 4).
	env := Envelope points: { 0@1.0 . 20@2.0 . 30@4.5 . 100@4.5 . 130@0.0} loopStart: 3 loopEnd: 4.
	env updateSelector: #modulation:.
	soound addEnvelope: env.

	env := Envelope points: { 0@6.0 . 20@4.0 . 30@3.0 . 100@3.0 .  130@3.0} loopStart: 3 loopEnd: 4.
	env updateSelector: #ratio:.
	soound addEnvelope: env.

	^ soound setPitch: 220.0 duration: 1.0 loudness: 0.5
