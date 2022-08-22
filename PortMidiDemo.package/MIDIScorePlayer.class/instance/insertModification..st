modifications
insertModification: aModification
	| index |
	modifications isEmpty ifFalse: [ 
			index := 1.
			[(index < modifications size) and: [(modifications at: index) time <= aModification time]] whileTrue: [ 
				index := index + 1 ].
			(index = modifications size) ifTrue: [ modifications add: aModification ]
			ifFalse: [ modifications add: aModification beforeIndex: index + 1 ].
		 ]
	ifTrue: [ 
			modifications add: aModification
		 ]