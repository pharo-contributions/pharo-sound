menu
saveLibToDisk: evt
	"Save the library to disk"

	| newName f snd |
	newName := UIManager default request: 'Please confirm name for library...' translated
						initialAnswer: 'MySounds'.
	newName isEmptyOrNil ifTrue: [^ self].
	f := FileStream newFileNamed: newName , '.fml'.
	AbstractSound soundNames do:
		[:name | snd := AbstractSound soundNamed: name.
		"snd isStorable" true ifTrue: [f nextChunkPut: 'AbstractSound soundNamed: ' , name , ' put: ' , snd storeString; cr; cr]
			ifFalse: [self inform: name , ' is not currently storable']].
	f close