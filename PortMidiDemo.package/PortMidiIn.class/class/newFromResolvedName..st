instance creation
newFromResolvedName: aName

	^ self newForId: (self pmLib idOfInputPortNamed: aName)