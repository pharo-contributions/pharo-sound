ioManagement
testGetDeviceInfoInput
	"Tests if PortMidi library can get infos on an input device."
	| infos |
	infos := self instance getDeviceInfo: self input.
	self assert: infos isNull equals: false.
	self assert: infos input equals: 1.
	self assert: infos output equals: 0.
	self assert: infos opened equals: 0.
	self assert: infos is_virtual equals: 0.