volumeManagement
decreaseVolume
	"Decreases the volume of all notes."
	self track do: [ :each |
			(( each velocity - 10 ) < 0) ifTrue: [ 
					each velocity: 0
				 ]
			ifFalse: [ 
					each velocity: each velocity - 10
				 ]
		 ]