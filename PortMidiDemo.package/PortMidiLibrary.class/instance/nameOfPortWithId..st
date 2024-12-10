ioManagement
nameOfPortWithId: id

	| devInfo |
	devInfo := self getDeviceInfo: id.
	devInfo isNull ifTrue: [
		self error: 'no device info found for given id' ].
	^ devInfo getNameString