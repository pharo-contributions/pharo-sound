display
displayScore
	"Print in the Transcript a nice representation of the score."
	self tracks keysAndValuesDo: [ :key :value |
			Transcript show: 'Track ', key, ' : '.
			value displayTrack.
			Transcript cr
		 ]