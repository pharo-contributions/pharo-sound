resources
testTime

	| score |
	score := NewMIDIScore filedScoreToScore: self midiReader asScore.
	self deny:
		((score tracks flatCollect: #events) anySatisfy: [ :e | 
			 e time isNil ])