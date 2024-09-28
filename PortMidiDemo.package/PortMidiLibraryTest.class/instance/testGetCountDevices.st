messagesManagement
testGetCountDevices

	| count |
	count := self instance getCountDevices.
	self assert: count > 0