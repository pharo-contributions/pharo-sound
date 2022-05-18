# pharo-sound
## Music implementations on Pharo

### MIDI connections implementation

It is possible to implement MIDI connections in Pharo and we used here an external library written in C langage.  
We use the Pharo package ***uFFI*** to be able to call functions of the external library.  
We use ***Pharo 10*** to develop our code.

#### PortMidi C external library

- GitHub repository : https://github.com/PortMidi/portmidi

This library contains methods that are useful to send and receive MIDI messages. We principally use methods that open streams ( to send or receive MIDI messages ) and methods to create and send MIDI messages. A ***documentation*** about this library is available on the repository.

#### uFFI and PortMidi in Pharo

- Link to uFFI documentation : http://books.pharo.org/booklet-uffi/pdf/2020-02-12-uFFI-V1.0.1

To implement the PortMidi external library in Pharo, we use the package uFFI.

Unified FFI package has a class that is called ***FFILibrary*** that we use to create a new Pharo object. Thanks to this inheritance, this object has an access to FFI methods like ***ffiCall:*** that can call an method that is external to Pharo.  
For example, if we want to use the method Pm_Initialize() of the C library, we use the following code :
```
PortMidiLibrary >> portMidiInitialize
	"Calls the PortMidi C library method that initialize the library."
	^ self ffiCall: #( int Pm_Initialize() )
```
