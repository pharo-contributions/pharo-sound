### Description
I represent a MIDI note.

I am used to store every informations that are necessary to play a MIDI note.

### Instance Variables
- noteValue: the MIDI value of the note.
- duration: the duration in milliseconds of the note.
- time: the time after which the note must be played.
- velocity: the velocity of the note.
- trackName: the name of the track note is in.

###Example of MIDINoteEvent use
note := MIDINoteEvent new noteValue: 60 ; duration: 500; time: 0; velocity: 64.
"TrackName is added later."