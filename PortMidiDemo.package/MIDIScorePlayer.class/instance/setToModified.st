modifications
setToModified
	| copy |
	score modified: true.
	copy := self copyLastVersion.
	copy time: (Time millisecondClockValue - firstStartTime).
	copy resetScore.
	versions add: copy.
	self incrementVersionIndex.
	^ copy