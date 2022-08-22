modification
unmuteChannel: aChannel
	self tracks do: [ :each |
			(each channel = (aChannel - 1) ) ifTrue:[
					each muted: false.
					^ self yourself
				]
		 ]