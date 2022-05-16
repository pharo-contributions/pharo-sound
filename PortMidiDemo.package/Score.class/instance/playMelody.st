noteManagement
playMelody
	"The score melody is stored in an OrderedCollection that contains a sequence of notes. This method takes one by one each note of the melody of the score to play it and during the right time."
	melody ifNotEmpty: [ 
			1 to:(melody size) do: [
				:index | self nextPlayNote: (melody at:index) during: (melody at:index) duration
			]
		 ]