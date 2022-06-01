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

#### Steps to install pharo-sound

##### 1. Clone the repository
- In your Pharo image, open the iceberg window ( Ctrl/Cmd + O + I )
- Click on the add button ( top right of the window )
- Click on "Clone From github.com"
- In the "Owner name field" tap : pharo-contributions
- In the "Project name field" tap : pharo-sound
- For the Protocol, choose HTTP
- Click on OK

##### 2. Load the PortMidiDemo package ( find the .dylib file of the PortMidi library )
- In your computer's system explorer, go to your Pharo image folder
- Go to *pharo-local/iceberg/pharo-contributions/pharo-sound/portmidiBuild/* folder
- Copy the file named libportmidi.2.0.3.dylib and paste it in your image folder
- In your Pharo image, double click on the pharo-sound package on the iceberg window
- Right click on the PortMidiDemo package and select load

##### 3. Load the Sound and SoundMorphicUserInterface packages
- In the iceberg window, right click on the Sound package and select load
- Go to your pharo-sound folder in your image folder
- Go into the utils folder and drag the file Slider.st and drop it in your Pharo image
- In your Pharo image window, click on "install into the image" on the new little window that appeared
- Right click on the SoundMorphicUserInterface package and select load

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
