modifications
changeAllVelocity: aVelocity 
	"Changes the velocity of all notes."
	self events do: [ :each |
			each velocity: aVelocity
		 ]