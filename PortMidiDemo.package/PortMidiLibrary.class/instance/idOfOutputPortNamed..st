ioManagement
idOfOutputPortNamed: aName

	self deviceInfosDo: [ :idx :devInfo |
		devInfo isOutput ifTrue: [ devInfo getNameString = aName ifTrue: [ ^ idx ] ] ].
	self error: 'port not found for given name'