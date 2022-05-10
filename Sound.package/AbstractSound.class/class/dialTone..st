utilities
dialTone: duration
	"AbstractSound dialTone: 2"
	
	^ MixedSound new
		add: (FMSound pitch: 350 duration: duration loudness: 0.5);
		add: (FMSound pitch: 440 duration: duration loudness: 0.5);
		play; 
		yourself
