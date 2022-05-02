noteManagement
playMelody
	"The partition melody is stored in an OrderedCollection that contains a sequence of notes. This method takes one by one each note of the melody of the partition to play it and during the right time."
	melody ifNotEmpty: [ 
			1 to:(melody size) do: [
				:index | self nextPlayNote: (melody at:index) note during: (melody at:index) duration
			]
		 ]