tests
testNoteFSharp
	| aNote |
	aNote := NoteFSharp new.
	self assert: aNote noteName equals: 'F#'.
	self assert: aNote noteValue equals: 6