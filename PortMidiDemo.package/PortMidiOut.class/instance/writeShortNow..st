services
writeShortNow: aMessage

	self pmLib
		writeShortOn: self stream value
		when: 0
		theMessage: aMessage