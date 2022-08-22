logManagement
addModificationsToLog
	midiPlayer modifications do: [ :aModification |
			log := log, aModification toString, String cr
		 ]