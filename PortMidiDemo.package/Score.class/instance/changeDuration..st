durationManagement
changeDuration: aDuration
	"Changes the duration of all tracks in the score."
	self tracks do: [ :each | 
			each changeDuration: aDuration
		 ]