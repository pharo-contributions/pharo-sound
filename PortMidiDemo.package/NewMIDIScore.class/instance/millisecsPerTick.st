accessing
millisecsPerTick
	"^ 60000 / ((tempos at: currentTempoIndex ) tempo * ticksPerQuarterNote)"
	^ (tempos at: currentTempoIndex) tempo / ticksPerQuarterNote