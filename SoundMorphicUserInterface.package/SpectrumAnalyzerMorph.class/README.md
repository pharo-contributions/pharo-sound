I am a tool for analyzing sound data from a microphone, CD, or other input source in real time. I have several display modes:

	signal		snapshots of the raw signal data as it arrives
	spectrum	frequency spectrum of the signal data as it arrives
	sonogram	scrolling plot of the frequency spectrum over time,
			      where the vertical axis is frequency, the horizontal
				  axis is time, and amount of energy at a given
				  frequency is shown as a grayscale value with
				  larger values being darker

To use this tool, be sure that you have selected the proper sound source using you host OS facilities. Set the desired sampling rate and FFT size (try 22050 samples/sec and an FFT size of 512) then click on the 'start' button. Use the slider to adjust the level so that the yellow level indicator peaks somewhere between the middle and the right edge at the maximum signal level.

SpectrumAnalyzerMorph new openInWorld 

Note that if the level meter peaks hit the right edge, you will get 'clipping', which creates a bunch of spurious high frequency noise in the frequency spectrum. If the display is set to 'signal' mode, you can actually see the tops and bottoms of the waveform being cut off when clipping occurs.

Many machines may not be able to perform spectrum analysis in real time, especially at higher sampling rates and larger FFT sizes. In both 'signal' and 'spectrum' modes, this tool will skip data to try to keep up with real time. However, in 'sonogram' mode it always processes all the data, even if it falls behind. This allows you to get a complete sonogram without dropouts even on a slower machine. However, as the sonogram display falls behind there will be a larger and larger time lag between when a sound is input and when it appears on the display.

The smaller the FFT size, the less frequency resolution you get. The lower the sampling rate, the less total frequency range you get. For an FFT size of N and a sampling rate of R, each of the N/2 'bins' of the frequency spectrum has a frequency resolution of R / N. For example, at a sampleing rate of 22050 samples/second, the total frequency range is 0 to 11025 Hz and an FFT of size 256 would divide this range into 128 bins (the output of an FFT of size N has N/2 bins), each of which covers a frequency band about 86 Hz wide.

To increase time resolution, increase the sampling rate and decrease the FFT size.
