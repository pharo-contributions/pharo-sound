private
processBuffer: buf 
	"Analyze one buffer of data."

	| data |
	data := displayType = 'signal' 
		ifTrue: [buf]
		ifFalse: [fft transformDataFrom: buf startingAt: 1].
	graphMorph ifNotNil: 
			[graphMorph
				data: data;
				changed].
	sonogramMorph ifNotNil: 
			[data := data collect: [:v | v sqrt].	"square root compresses dynamic range"
			data /= 400.0.
			sonogramMorph plotColumn: (data copyFrom: 1 to: data size // 1)]