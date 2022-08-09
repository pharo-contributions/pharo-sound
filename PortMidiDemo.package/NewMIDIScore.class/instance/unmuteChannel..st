modification
unmuteChannel: aChannel
	"Unmute aChannel so that the track on this channel can be played again."
	self tracks do: [ :each |
			(each channel = (aChannel - 1) ) ifTrue:[
					each muted: false.
					^ self yourself
				]
		 ]