instance creation
newFromResolvedName: aName

	^ self newForId: (self pmLib idOfOutputPortNamed: aName)