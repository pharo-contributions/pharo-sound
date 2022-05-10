playing
playSoundNamed: soundName ifAbsentReadFrom: aifFileName

	self soundEnabled ifTrue: [
		(SampledSound soundNames includes: soundName) ifFalse: [
			(FileSystem workingDirectory / aifFileName) exists ifTrue: [
				SampledSound
					addLibrarySoundNamed: soundName
					fromAIFFfileNamed: aifFileName]].
		(SampledSound soundNames includes: soundName) ifTrue: [
			SampledSound playSoundNamed: soundName]]