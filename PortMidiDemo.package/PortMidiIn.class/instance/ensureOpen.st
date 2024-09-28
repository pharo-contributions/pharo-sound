instance creation
ensureOpen

	stream ifNotNil: [ ^ self ].
	self open