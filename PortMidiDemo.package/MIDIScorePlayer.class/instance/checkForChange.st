liveCoding
checkForChange
	| keys |
	keys := self versions keys.
	keys do: [ :each | 
			(( each - PortMidiLibrary uniqueInstance getTime ) between: -1 and: 1) ifTrue: [
					( self score = (self versions at: each) ) ifFalse: [ 
							self score: (self versions at: each).
							self score tracks do: [ :track |
									track timerCounter: PortMidiLibrary uniqueInstance getTime.
								 ].
							self score displayScore
						 ] 
				 ]
		 ]