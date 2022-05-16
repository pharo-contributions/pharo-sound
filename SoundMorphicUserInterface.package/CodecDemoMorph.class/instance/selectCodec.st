private
selectCodec

	| codecs newCodec |
	codecs := (SoundCodec allSubclasses collect: [:c | c name]) asSortedCollection.
	codecs add: 'None'.
	newCodec := UIManager default 
		chooseFrom: codecs values: codecs title: 'Codec:' translated.
	newCodec ifNil: [^ self].
	self codecClassName: newCodec.
