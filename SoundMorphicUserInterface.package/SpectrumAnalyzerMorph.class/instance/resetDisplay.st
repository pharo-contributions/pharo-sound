menu and buttons
resetDisplay
	"Recreate my display after changing some parameter such as FFT size."

	displayType = 'signal' ifTrue: [self showSignal].
	displayType = 'spectrum' ifTrue: [self showSpectrum].
	displayType = 'sonogram' ifTrue: [self showSonogram].
