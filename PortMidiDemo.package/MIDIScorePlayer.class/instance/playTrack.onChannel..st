playing
playTrack: aTrack onChannel: aChannel
	"The track melody is stored in an OrderedCollection that contains a sequence of notes. This method takes one by one each note of the melody of the track to play it and during the right time."
	aTrack track ifNotEmpty: [ 
			1 to:(aTrack track size) do: [
				:index | self nextPlayNote: (aTrack track at:index) onChannel: aChannel during: (aTrack track at:index) duration
			]
		 ]