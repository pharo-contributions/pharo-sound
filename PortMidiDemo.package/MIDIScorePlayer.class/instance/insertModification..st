as yet unclassified
insertModification: aModification
	| index |
	index := 1.
	[(modifications at: index) time > aModification time] whileFalse: [ 
		index := index + 1 ].
	modifications add: aModification beforeIndex: index + 1