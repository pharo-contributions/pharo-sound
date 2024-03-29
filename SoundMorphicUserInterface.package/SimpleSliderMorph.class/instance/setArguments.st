menu
setArguments

	| s newArgs newArgsArray |
	s := WriteStream on: ''.
	arguments do: [:arg | arg printOn: s. s nextPutAll: '. '].
	newArgs := UIManager default
		request:
'Please type the arguments to be sent to the target
when this button is pressed separated by periods' translated
		initialAnswer: s contents.
	newArgs isEmptyOrNil ifFalse: [
		newArgsArray := self compiler evaluate: '{', newArgs, '}' for: self logged: false.
		self arguments: newArgsArray].
