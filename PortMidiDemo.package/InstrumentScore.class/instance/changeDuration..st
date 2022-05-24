durationManagement
changeDuration: aDuration 
	"Changes the duration of all notes."
	self track do: [ :each |
			each duration: aDuration
		 ]