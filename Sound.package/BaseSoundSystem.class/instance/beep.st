beep
beep
	"There is sound support, so we use the default sampled sound for a beep."

	self soundEnabled ifTrue: [ SampledSound beep]