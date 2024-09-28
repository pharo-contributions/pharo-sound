instance creation
newForPortNamed: aName

	^ self newForId: (self pmLib idOfInputPortNamed: aName)