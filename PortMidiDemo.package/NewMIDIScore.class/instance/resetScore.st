initialization
resetScore
	self tracks do: [ :each |
			each resetTrack
		 ].
	self doneTracks reset