playing
playTrack: aTrack
	"The score melody is stored in an OrderedCollection that contains a sequence of notes. This method takes one by one each note of the melody of the score to play it and during the right time."
	aTrack ifNotEmpty: [ 
			1 to:(aTrack size) do: [
				:index | self nextPlayNote: (aTrack at:index) during: (aTrack at:index) duration
			]
		 ]