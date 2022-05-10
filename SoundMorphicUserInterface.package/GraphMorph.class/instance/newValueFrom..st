private
newValueFrom: aPointOrNumber

	^ aPointOrNumber class = Point
		ifTrue: [aPointOrNumber r]
		ifFalse: [aPointOrNumber].
