ioManagement
deviceInfosDo: aBlock

	(0 to: self getCountDevices - 1) collect: [ :idx |
		aBlock value: idx value: (self getDeviceInfo: idx) ]