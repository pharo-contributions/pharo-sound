channelManagement
muteChannel: aChannel
	self tracks do: [ :each |
			(each channel = aChannel ) ifTrue:[
					each muted: true.
					^ self
				]
		 ]