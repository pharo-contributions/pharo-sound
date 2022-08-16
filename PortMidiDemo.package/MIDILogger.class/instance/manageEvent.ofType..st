as yet unclassified
manageEvent: anEvent ofType: typeName
	| newEvent time |
	time := Time millisecondClockValue - midiPlayer firstStartTime.
	newEvent := anEvent toString.
	log := log, typeName, ':', time asString, ':', anEvent toString, String cr