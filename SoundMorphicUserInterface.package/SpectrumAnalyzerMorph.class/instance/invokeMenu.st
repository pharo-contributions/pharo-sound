menu and buttons
invokeMenu
	"Invoke the settings menu."

	| aMenu |
	aMenu := MenuMorph new target: self.
	aMenu addList:	{
		{'set sampling rate' translated.		#setSamplingRate}.
		{'set FFT size' translated.			#setFFTSize}.
		{'set display type' translated.		#setDisplayType}}.
	aMenu popUpInWorld