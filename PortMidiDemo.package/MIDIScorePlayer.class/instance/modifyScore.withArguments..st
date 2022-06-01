as yet unclassified
modifyScore: aSymbol withArguments: argumentsList
	| copy |
	copy := self score copy.
	copy perform: aSymbol withArguments: argumentsList.
	self versions add: copy.
	self incrementVersionIndex