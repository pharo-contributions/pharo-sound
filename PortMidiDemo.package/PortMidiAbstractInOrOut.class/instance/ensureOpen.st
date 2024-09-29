instance creation
ensureOpen

	handle ifNotNil: [ ^ self ].
	self open