channelManagement
muteChannel: aChannel
	"Mutes aChannel in the score : the track on aChannel is not played anymore."
	self tracks do: [ :each |
			(each channel = (aChannel - 1) ) ifTrue:[
					each muted: true.
					^ self yourself
				]
		 ]