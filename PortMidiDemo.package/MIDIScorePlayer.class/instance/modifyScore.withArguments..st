liveCoding
modifyScore: aSymbol withArguments: argumentsList
	| aCopy |
	aCopy := self score veryDeepCopy.
	aCopy perform: aSymbol withArguments: argumentsList.
	aCopy resetScore.
	self versions at: PortMidiLibrary uniqueInstance getTime put: aCopy.
	self score modified: true.
	self incrementVersionIndex