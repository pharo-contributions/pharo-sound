# pharo-sound
## Music implementations on Pharo

### MIDI connections implementation

To implement MIDI connections in Pharo, we used an external library written in C langage to help us.  
We use the Pharo package ***uFFI*** to be able to call functions of the external library.  
We use ***Pharo 10*** to develop our code.

#### PortMidi C external library

- GitHub repository : https://github.com/PortMidi/portmidi

This library contains methods that are useful to send and receive MIDI messages. We mainly use methods that open streams ( to send or receive MIDI messages ) and methods to create and send MIDI messages. A ***documentation*** about this library is available on the repository.

#### uFFI and PortMidi in Pharo

- Link to a uFFI documentation : http://books.pharo.org/booklet-uffi/pdf/2020-02-12-uFFI-V1.0.1

To implement the PortMidi external library in Pharo, we use the package uFFI. This package is used to be able to call methods that are external to Pharo interface and langage.

Unified FFI package has a class that is called ***FFILibrary*** and that we use to create a new Pharo object that represents the external library in Pharo. Thanks to this inheritance, this object has an access to FFI methods like ***ffiCall:*** that can call methods that are external to Pharo.  
For example, if we want to use the method Pm_Initialize() of the PortMidi C library, we use the following code :
```smalltalk
PortMidiLibrary >> portMidiInitialize
	"Calls the PortMidi C library method that initialize the library."
	^ self ffiCall: #( int Pm_Initialize() )
```

#### Repository packages

##### portmidi

This folder is the PortMidi C library repository. We added one example in this repository so that it is easier to use.

##### portmidiBuild

This folder contains the build of the PortMidi C library. It contains a reference file to the library that is important to be able to load the PortMidiDemo package in Pharo.

##### PortMidiDemo

This package contains the source code we wrote for MIDI implementation in Pharo. There are several tags in this package :
- PortMidi : Classes that represent external classes or structures of the PortMidi external C library
- Source : Classes that implement MIDI stuff using the PortMidi classes
- Tests : Every tests for the previous tags classes

##### Sound and SoundMorphicUserInterface

- Link to Sound GitHub repository : https://github.com/pharo-contributions/Sound

These two packages are old packages that come from Squeak which is an old version of Pharo.
For the moment, we only use the MIDIPianoKeyboardMorph class from the package SoundMorphicUserInterface. This morph is a piano keyboard that is able to play MIDI messages or sound.
We overrode the methods *turnOnNote* and *turnOffNote* of its class so that we can use them with our work.

To use this piano keyboard morph, you can execute the following code in a Pharo playground :
```smalltalk
MIDIPianoKeyboardMorph new openInWindow
```

##### utils

This folder contains files that are apart from the project and useful/necessary.
For now, it contains the Slider class file that is important to be able to load the Sound package in Pharo.
