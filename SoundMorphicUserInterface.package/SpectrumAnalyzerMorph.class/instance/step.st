stepping and presenter
step
	"Update the record light, level meter, and display."

	| w |
	"update the record light and level meter"
	soundInput isRecording
		ifTrue: [statusLight color: Color yellow]
		ifFalse: [statusLight color: Color gray].
	w := ((121 * soundInput meterLevel) // 100) max: 1.
	levelMeter width ~= w ifTrue: [levelMeter width: w].

	"update the display if any data is available"
	self updateDisplay.
