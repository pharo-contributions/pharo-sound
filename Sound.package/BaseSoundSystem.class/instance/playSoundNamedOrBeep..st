playing
playSoundNamedOrBeep: soundName
	"There is sound support, so we play the given sound
	instead of beeping."

	self soundEnabled ifTrue: [
		^self playSoundNamed: soundName]