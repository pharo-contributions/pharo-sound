initialization
setPitch: pitchNameOrNumber duration: d loudness: vol
	"Creates a sound for a giving note, a duration in second and a volume expressed as a float between 0 and 1.0. The note can be expressed either by a frequency or a pitchName e.g. 'a4, g#3"
	
	"(FMSound pitch: 'a4' duration: 2.5 loudness: 0.4) play"


	super setPitch: pitchNameOrNumber duration: d loudness: vol.
	modulation ifNil: [modulation := 0.0].
	multiplier ifNil: [multiplier := 0.0].
		"ugly!"
	self pitch: (self nameOrNumberToPitch: pitchNameOrNumber).
	self reset.
