### Description
I represent every actions that modify a note.

I am used to know which note needs to be modified, in which track and when the player needs to modify it.
The notes at the given index are not really modified, they are replaced by a given new note that is the same but which has been modified. In that way, it is not necessary to create one event class for each modification that can be made on a note.

### Main collaborator
- MIDINote : it represents the note to modify

### Instance Variables
- noteIndex: where the note to modify is in the track.
- newNote: the modified note that will replace the previous one.
- time: the time (an integer in milliseconds) after which the MIDI player needs to modify the note.
- trackName: the name (a string) of the track that contains the note to modify.

###Example of MIDINoteModificationEvent use
"Get the index of the note to modify"
anEvent := MIDINoteModificationEvent new time: anInteger; trackName: aTrackName; noteIndex: anIndex; newNote: aNewNote