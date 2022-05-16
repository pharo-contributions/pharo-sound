other
readSampleSetInfoFrom: dirName
	"MessageTally spyOn: [SampledInstrument new readSampleSetFrom: 'Tosh:Desktop Folder:AAA Squeak2.0 Beta:Organ Samples:Flute8'] timeToRun"

	| all dir |
	all := OrderedCollection new.
	dir := dirName asFileReference.
	dir fileNames do: [:n | | info fullName |
		fullName := dir fullNameFor: n.
		info := AIFFFileReader new readFromFile: fullName
			mergeIfStereo: false
			skipDataChunk: true.
		all add: n -> info].
	^ all
