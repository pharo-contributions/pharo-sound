instance creation
newForPortNamed: aName

	^ self newForId: (self pmLib idOfOutputPortNamed: aName)