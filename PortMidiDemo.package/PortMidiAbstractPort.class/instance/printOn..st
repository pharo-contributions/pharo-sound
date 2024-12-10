printing
printOn: ws

	super printOn: ws.
	ws << ' ('.
	self portName.
	ws << ')'