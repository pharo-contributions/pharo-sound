private
ensureOpen

	handle ifNotNil: [ ^ self ].
	self open