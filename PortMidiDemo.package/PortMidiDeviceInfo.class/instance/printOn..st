printing
printOn: ws

	super printOn: ws.
	ws << ' ('.
	self printDirectionAndNameOn: ws.
	ws << ')'