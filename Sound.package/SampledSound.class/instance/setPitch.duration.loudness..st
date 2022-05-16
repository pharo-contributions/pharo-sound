initialization
setPitch: pitchNameOrNumber duration: d loudness: vol
	"Used to play scores using the default sample table."
	"(SampledSound pitch: 880.0 duration: 1.5 loudness: 0.6) play"

	| p |
	super setPitch: pitchNameOrNumber duration: d loudness: vol.
	p := self nameOrNumberToPitch: pitchNameOrNumber.
	samples := DefaultSampleTable.
	samplesSize := samples size.
	initialCount := (d * self samplingRate asFloat) rounded.
	originalSamplingRate :=
		((self samplingRate asFloat * p asFloat) / NominalSamplePitch asFloat) asInteger.
	self loudness: vol.
	self reset.
