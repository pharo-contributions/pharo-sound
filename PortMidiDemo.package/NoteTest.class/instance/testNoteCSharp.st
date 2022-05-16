tests
testNoteCSharp
	| aNote |
	aNote := NoteCSharp new.
	self assert: aNote noteName equals: 'C#'.
	self assert: aNote noteValue equals: 1