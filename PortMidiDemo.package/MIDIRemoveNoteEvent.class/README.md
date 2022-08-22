### Description
I represent the action of removing a note from a track.

I am used to know which note needs to be removed, in which track and when the player needs to remove it.

### Main collaborator
- MIDINote : it represents the note to remove

### Instance Variables
- noteIndex where the note to remove is.
- time: the time (an integer in milliseconds) after which the MIDI player needs to remove the note.
- trackName: the name (a string) of the track the note must be removed from.

###Example of MIDIRemoveNoteEvent use
"Get the index of the note to remove."
anEvent := MIDIRemoveNoteEvent new time: anInteger; trackName: aTrackName; noteIndex: anIndex