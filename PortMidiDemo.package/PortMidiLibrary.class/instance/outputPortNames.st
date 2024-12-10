ioManagement
outputPortNames

	^ Array streamContents: [ :ws |
		  self deviceInfosDo: [ :idx :devInfo |
			  devInfo isOutput ifTrue: [ ws nextPut: devInfo getNameString ] ] ]