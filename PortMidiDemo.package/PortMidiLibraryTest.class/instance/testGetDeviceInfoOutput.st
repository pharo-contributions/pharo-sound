tests
testGetDeviceInfoOutput
	"Tests if PortMidi library can get infos on an output device."
	| infos |
	infos := self instance getDeviceInfo: self output.
	self assert: infos isNull equals: false.
	self assert: infos input equals: 0.
	self assert: infos output equals: 1.
	self assert: infos opened equals: 0.
	self assert: infos is_virtual equals: 0.