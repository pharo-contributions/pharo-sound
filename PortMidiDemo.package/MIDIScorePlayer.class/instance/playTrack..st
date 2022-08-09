playing
playTrack: aTrack
	"The track melody is stored in an OrderedCollection that contains a sequence of notes. This method takes one by one each note of the melody of the track to play it and during the right time."
	aTrack events ifNotEmpty: [ 
			1 to:(aTrack events size) do: [
				:index | self nextPlayNote: (aTrack events at:index) during: (aTrack events at:index) duration
			]
		 ]