durationManagement
decreaseDuration
	"Decreases the duration of all notes."
	self track do: [ :each |
				each duration: each duration / 2
		 ]