playing
getRealNoteValues: aTime
	| quarterNoteValue |
	"Calculate the new value of a quarter note"
	quarterNoteValue := 60000 / ( score tempos at: score currentTempoIndex ) tempo.
	"Calculate with the value of a quarter note the value of the current note"
	^ ((60 * aTime) * quarterNoteValue) / 60000