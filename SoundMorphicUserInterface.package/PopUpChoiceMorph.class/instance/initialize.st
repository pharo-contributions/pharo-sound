initialization
initialize
	"initialize the state of the receiver"

	super initialize.
	self contents: 'PopUpChoice of Colors'.
	target := Color.
	actionSelector := nil.
	arguments := EmptyArray.
	getItemsSelector := #colorNames.
	getItemsArgs := EmptyArray