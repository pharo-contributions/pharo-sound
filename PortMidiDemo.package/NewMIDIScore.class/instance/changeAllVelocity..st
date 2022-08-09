modification
changeAllVelocity: aVelocity
	"Changes the velocity of all tracks in the score."
	self tracks do: [ :each | 
			each changeAllVelocity: aVelocity
		 ]