driver selection
current
	"
	self current.
	"
	(CurrentDriver isNil or: [ CurrentDriverSession ~~ Smalltalk session ]) ifTrue: [ 
		CurrentDriver := self pickDriverClass new.
		CurrentDriverSession := Smalltalk session
	].

	^ CurrentDriver