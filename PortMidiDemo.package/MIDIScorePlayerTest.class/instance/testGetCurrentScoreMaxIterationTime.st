tests
testGetCurrentScoreMaxIterationTime
	| player score aTrack anotherTrack |
	score := NewMIDIScore new.
	aTrack := MIDITrack new.
	anotherTrack := MIDITrack new.
	score addTrack: aTrack named: 'aTrack'.
	score addTrack: anotherTrack named: 'anotherTrack'.
	player := MIDIScorePlayer new score: score.
	
	aTrack addEventToTrack: ( MIDINoteEvent new time: 0 ).
	aTrack addEventToTrack: ( MIDINoteEvent new time: 2000 ).
	aTrack addEventToTrack: ( MIDINoteEvent new time: 5000 ).
	
	anotherTrack addEventToTrack: ( MIDINoteEvent new time: 0 ).
	anotherTrack addEventToTrack: ( MIDINoteEvent new time: 1000 ).
	anotherTrack addEventToTrack: ( MIDINoteEvent new time: 4000 ).
	anotherTrack addEventToTrack: ( MIDINoteEvent new time: 7000 ).
	
	self assert: player getCurrentScoreMaxIterationTime equals: 7000