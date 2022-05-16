initialization
initialize
	super initialize.
	mutex := Semaphore forMutualExclusion.
	"We want low latency for sound."
	ProcessorScheduler idleTime: 1000.