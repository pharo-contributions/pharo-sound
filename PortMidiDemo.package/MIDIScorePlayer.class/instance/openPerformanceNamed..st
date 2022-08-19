inputManagement
openPerformanceNamed: aName
	| file stream content |
	file := aName asFileReference.
	stream := file readStream.
	score := NewMIDIScore new.
	content := stream nextLine.
	[content isNil] whileFalse: [ |event|
			event := content substrings: ':'.
			self addEventToScore: event.
			content := stream nextLine
		 ]