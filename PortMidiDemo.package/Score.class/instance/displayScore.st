display
displayScore
	"Print in the Transcript a nice representation of the score."
	self tracks keysAndValuesDo: [ :key :value |
			'Track ' trace; trace: key, ' : '.
			value displayTrack.
			Transcript cr
		 ]