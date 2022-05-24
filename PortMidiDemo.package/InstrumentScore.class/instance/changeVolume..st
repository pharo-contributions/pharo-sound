volumeManagement
changeVolume: newVolume
	"Changes the volume of all notes."
	self track do: [ :each |
			each velocity: newVolume
		 ]