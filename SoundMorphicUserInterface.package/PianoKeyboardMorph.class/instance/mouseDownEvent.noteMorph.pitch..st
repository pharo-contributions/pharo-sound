simple keyboard
mouseDownEvent: arg1 noteMorph: arg2 pitch: arg3
	"Reorder the arguments for existing event handlers"
"	(arg3 isMorph and:[arg3 eventHandler notNil]) ifTrue:[arg3 eventHandler fixReversedValueMessages]."
	^self mouseDownPitch: arg1 event: arg2 noteMorph: arg3