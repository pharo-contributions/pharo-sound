as yet unclassified
sendNote: aNote during: aTime
	(aTime // aNote duration) duration timesRepeat: [
		self nextPlayNote: aNote note during: aNote duration
	]