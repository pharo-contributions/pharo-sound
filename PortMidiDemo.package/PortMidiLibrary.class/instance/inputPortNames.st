ioManagement
inputPortNames

	^Array streamContents: [ :ws |
		self deviceInfosDo: [ :idx :devInfo |
			devInfo isInput ifTrue: [ ws nextPut: devInfo getNameString ] ] ]