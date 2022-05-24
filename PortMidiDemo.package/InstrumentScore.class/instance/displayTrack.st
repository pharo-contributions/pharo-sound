display
displayTrack
	"Print in the Transcript a nice representation of the track."
	self track do: [ :aNote |
			Transcript show: aNote note noteName, ' '
		 ]