ioManagement
createNewPointerForStreamWithType: pointerType
	"Create a new instance of FFIExternalValueHolder and an instance of this new class to get a pointer for poiterType."
	| midiStream valueHolderClass |
	valueHolderClass := FFIExternalValueHolder ofType: pointerType.
	midiStream := valueHolderClass new.
	^ midiStream tfPointerAddress.