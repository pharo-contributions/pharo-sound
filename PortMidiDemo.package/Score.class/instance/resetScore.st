initialization
resetScore
	self tracks do: [ :each |
			each resetTrack
		 ]