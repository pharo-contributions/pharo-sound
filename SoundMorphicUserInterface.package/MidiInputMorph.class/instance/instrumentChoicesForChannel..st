private
instrumentChoicesForChannel: channelIndex

	| names inst |
	names := AbstractSound soundNames asOrderedCollection.
	names := names collect: [:n |
		inst := AbstractSound soundNamed: n.
		(inst isKindOf: UnloadedSound)
			ifTrue: [n, '(out)']
			ifFalse: [n]].
	names add: 'clink'.
	names add: 'edit ', (instrumentSelector at: channelIndex) contents.
	^ names asArray
