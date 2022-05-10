commands
appendValue: aPointOrNumber

	| newVal |
	data := data asOrderedCollection.
	newVal := self newValueFrom: aPointOrNumber.
	data addLast: newVal.
	newVal < minVal ifTrue: [minVal := newVal].
	newVal > maxVal ifTrue: [maxVal := newVal].
	self cursor: data size.
	self flushCachedForm.
