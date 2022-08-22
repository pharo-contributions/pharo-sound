modification
muteChannel: aChannel
	self tracks do: [ :each |
			(each channel = (aChannel - 1) ) ifTrue:[
					each muted: true.
					^ self yourself
				]
		 ]