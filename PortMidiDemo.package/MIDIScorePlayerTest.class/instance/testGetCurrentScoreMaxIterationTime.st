tests
testGetCurrentScoreMaxIterationTime
	| player score aTrack anotherTrack |
	score := NewMIDIScore new.
	aTrack := MIDITrack new.
	anotherTrack := MIDITrack new.
	score addTrack: aTrack named: 'aTrack'.
	score addTrack: anotherTrack named: 'anotherTrack'.
	player := MIDIScorePlayer new score: score.
	
	aTrack addEventToTrack: ( MIDINote new time: 0 ).
	aTrack addEventToTrack: ( MIDINote new time: 2000 ).
	aTrack addEventToTrack: ( MIDINote new time: 5000 ).
	
	anotherTrack addEventToTrack: ( MIDINote new time: 0 ).
	anotherTrack addEventToTrack: ( MIDINote new time: 1000 ).
	anotherTrack addEventToTrack: ( MIDINote new time: 4000 ).
	anotherTrack addEventToTrack: ( MIDINote new time: 7000 ).
	
	self assert: player getCurrentScoreMaxIterationTime equals: 7000