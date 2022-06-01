tests
testChangeDuration
	| aScore |
	aScore := Score new.
	aScore addTrack: (InstrumentScore newTrackWith: #( C D Eb D C )) named: 'score1'.
	aScore addTrack: (InstrumentScore newTrackWith: #( Eb F G F Eb )) named: 'score2'.
	aScore addTrack: (InstrumentScore newTrackWith: #( G Ab Bb Ab G )) named: 'score3'.
	
	aScore tracks do: [ :each | 
			each track do: [ :track |
					self assert: track duration equals: 500
				 ]
		].
	
	aScore changeDuration: 1000.
	
	aScore tracks do: [ :each | 
			each track do: [ :track |
					self assert: track duration equals: 1000
				 ]
		].