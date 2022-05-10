FFI
tfPointerAddress

	self pinInMemory.
	^ PointerUtils oopForObject: self
	