printing
printOn: ws

	super printOn: ws.
	ws << ' on: '.
	self deviceInfo printDirectionAndNameOn: ws