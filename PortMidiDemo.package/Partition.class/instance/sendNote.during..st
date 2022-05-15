noteManagement
sendNote: aNote during: aTime
	"Loops during aTime milliseconds and and plays aNote for each iteration."
	(aTime // aNote duration) timesRepeat: [
		self nextPlayNote: aNote note during: aNote duration
	]