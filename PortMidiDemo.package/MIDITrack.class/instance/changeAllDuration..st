modifications
changeAllDuration: aDuration 
	"Changes the duration of all notes."
	self events do: [ :each |
			each duration: aDuration
		 ]