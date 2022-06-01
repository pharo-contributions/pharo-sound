initialization
resetScore
	self score tracks do: [ :each |
			each resetTrack
		 ]