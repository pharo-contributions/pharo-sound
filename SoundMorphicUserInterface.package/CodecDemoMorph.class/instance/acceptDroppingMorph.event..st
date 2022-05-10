layout
acceptDroppingMorph: aMorph event: evt

	| codecClass |
	'None' = codecClassName
		ifTrue: [aMorph sound play]
		ifFalse: [
			codecClass := Smalltalk at: codecClassName ifAbsent: [^ self].
			(codecClass new compressAndDecompress: aMorph sound) play].
	aMorph position: self topRight + (10@0).
