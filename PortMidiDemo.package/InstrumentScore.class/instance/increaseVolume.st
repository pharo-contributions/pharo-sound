volumeManagement
increaseVolume
	"Increases the volume of all notes."
	self track do: [ :each |
			each velocity: each velocity + 10
		 ]