modifications
copyCurrentVersion
	| aCopy |
	aCopy := self score veryDeepCopy.
	aCopy resetScore.
	^ aCopy