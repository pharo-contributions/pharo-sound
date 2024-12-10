ioManagement
idOfInputPortNamed: aName

	self deviceInfosDo: [ :id :devInfo|
		devInfo isInput ifTrue: [ devInfo getNameString = aName ifTrue: [ ^ id ] ] ].
	self error: 'port not found for given name'