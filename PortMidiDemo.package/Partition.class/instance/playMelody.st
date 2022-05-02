as yet unclassified
playMelody
	melody ifNotEmpty: [ 
			1 to:(melody size) do: [
				:index | self nextPlayNote: (melody at:index) note during: (melody at:index) duration
			]
		 ]