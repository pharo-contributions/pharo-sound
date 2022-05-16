tests
testNoteBFlat
	| aNote |
	aNote := NoteBFlat new.
	self assert: aNote noteName equals: 'Bb'.
	self assert: aNote noteValue equals: 10