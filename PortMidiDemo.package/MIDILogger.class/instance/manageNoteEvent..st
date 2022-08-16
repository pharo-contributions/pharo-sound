eventManagement
manageNoteEvent: anEvent
	| newEvent time |
	time := Time millisecondClockValue - midiPlayer firstStartTime.
	newEvent := anEvent toString.
	log := log, 'PlayNote:', time asString, ':', anEvent toString, String cr