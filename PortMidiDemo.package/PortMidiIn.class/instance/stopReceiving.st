instance creation
stopReceiving

	process ifNotNil: [
		process terminate.
		process := nil ]