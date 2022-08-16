eventManagement
manageNoteChangeEvent: anEvent
	| newEvent time |
	time := Time millisecondClockValue - midiPlayer firstStartTime.
	newEvent := anEvent toString.
	log := log, 'ChangeNote:', time asString, ':', anEvent toString, String cr