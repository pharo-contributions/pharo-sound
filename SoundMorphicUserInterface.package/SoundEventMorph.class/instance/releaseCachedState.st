caching
releaseCachedState

	super releaseCachedState.
	sound := sound compressWith: GSMCodec.
