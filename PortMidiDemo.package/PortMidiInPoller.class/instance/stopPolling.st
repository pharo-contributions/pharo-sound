services
stopPolling

	pollingProcess ifNotNil: [ pollingProcess terminate ].
	pollingProcess := nil