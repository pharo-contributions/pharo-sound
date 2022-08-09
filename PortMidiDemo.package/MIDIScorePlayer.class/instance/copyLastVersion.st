modifications
copyLastVersion
	| aCopy |
	aCopy := (versions at: currentVersionIndex) veryDeepCopy.
	aCopy resetScore.
	^ aCopy