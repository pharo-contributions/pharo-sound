editing
insertTransposed
	| delta transposedNotes list |
	list := (12 to: -12 by: -1) collect: [:i | i printString].
	delta := UIManager default chooseFrom: list values: list title: 'Offset' translated.
 	delta ifNil: [^self].
	transposedNotes := NotePasteBuffer 
				collect: [:note | note copy midiKey: note midiKey + delta].
	selection isNil ifTrue: [^self].
	score insertEvents: transposedNotes at: self selection.
	scorePlayer updateDuration.
	self rebuildFromScore