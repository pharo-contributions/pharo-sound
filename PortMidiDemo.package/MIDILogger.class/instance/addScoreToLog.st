logManagement
addScoreToLog
	midiPlayer score tracks do: [ :track |
			track events do: [ :event |
					log := log, event toString, String cr
				 ]
		 ]