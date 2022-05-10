event handling
mouseDown: evt 
	| items menu selectedItem |
	(target isNil or: [getItemsSelector isNil]) ifTrue: [^self].
	items := target perform: getItemsSelector withArguments: getItemsArgs.
	selectedItem := MenuMorph
					chooseFrom: items
					values: items
					lines: #()
					title: 'Pick a color'.		
	selectedItem ifNil: [^self].
	self contentsClipped: selectedItem.	"Client can override this if necess"
	actionSelector ifNotNil: 
			[target perform: actionSelector
				withArguments: (arguments copyWith: selectedItem)]