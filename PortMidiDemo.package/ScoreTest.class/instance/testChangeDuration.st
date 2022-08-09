tests
testChangeDuration
	| aScore |
	aScore := NewMIDIScore new.
	aScore addTrack: (MIDITrack newTrackWith: #( C D Eb D C )) named: 'score1'.
	aScore addTrack: (MIDITrack newTrackWith: #( Eb F G F Eb )) named: 'score2'.
	aScore addTrack: (MIDITrack newTrackWith: #( G Ab Bb Ab G )) named: 'score3'.
	
	aScore tracks do: [ :each | 
			each events do: [ :track |
					self assert: track duration equals: 500
				 ]
		].
	
	aScore changeAllDuration: 1000.
	
	aScore tracks do: [ :each | 
			each events do: [ :track |
					self assert: track duration equals: 1000
				 ]
		].