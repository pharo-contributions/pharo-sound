accessing special
sysexEndingBytes

	| bytes eoxIndex |
	bytes := self messageBytes.
	eoxIndex := bytes indexOf: 16rF7.
	^ bytes copyFrom: 1 to: eoxIndex