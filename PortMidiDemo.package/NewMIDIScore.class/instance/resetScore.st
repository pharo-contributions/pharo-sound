initialization
resetScore
	"Sets the tracks reading back to the beginning."
	self tracks do: [ :each |
			each resetTrack
		 ].
	self doneTracks reset