### Description
I represent the action of adding a note to a track.

I am used to know which note needs to be added, in which track and when the player needs to add it.

### Main collaborator
- MIDINote : it represents the note to add

### Instance Variables
- newNote: the note to add.
- time: the time (an integer in milliseconds) after which the MIDI player needs to add the note.
- trackName: the name (a string) of the track the note must be added to.

###Example of MIDIAddNoteEvent use
"Create a note (see MIDINoteEvent)"
anEvent := MIDIAddNoteEvent new time: anInteger; trackName: aTrackName; newNote: aNewNote