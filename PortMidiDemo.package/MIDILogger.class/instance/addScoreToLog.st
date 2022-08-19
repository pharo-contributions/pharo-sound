eventManagement
addScoreToLog
	midiPlayer score tracks do: [ :track |
			track events do: [ :event |
					log := log, event toString, String cr
				 ]
		 ]
	"manageEvent: ofType: 
	| newEvent time |
	""(typeName = 'PlayNote') ifFalse: [ | track |
			track := midiPlayer score tracks at: anEvent trackName.
			track events add: anEvent beforeIndex: track nextEventIndex + 1.
		 ].""
	time := Time millisecondClockValue - midiPlayer firstStartTime.
	newEvent := anEvent toString.
	log := log, typeName, ':', time asString, ':', anEvent toString, String cr"