### Description
I represent a Logger that serializes MIDI performances made with a MIDIScorePlayer.

I save MIDI performances in a backup file with extension .perf. In this file, each line represent a MIDI event :
- The informations of an event are written on a single line and are separated by the character ':'.
- The first lines of the file begin with the keyword 'PlayNote' and represent the MIDI notes that are played.
- The other lines represent every modifications that are made during the performance. These lines begin with keywords such as 'ModyfiNote', 'AddNote' or 'RemoveNote' that describe what kind of event it is.

### Main collaborators
- MIDIScorePlayer : I encapsulate this class to create a MIDI performance backup.
- MIDINoteEvent : I use this class to create an event (to play a note) that will be saved in a .perf file.
- MIDIAddNoteEvent : I use this class to create an event (to add a new note to a score) that will be saved in a .perf file.
- MIDINoteModificationEvent : I use this class to create an event (to modify a property of a note) that will be saved in a .perf file.
- MIDIRemoveNoteEvent : I use this class to create an event (to remove a note from a score) that will be saved in a .perf file.

### Instance Variables
- log: a String that contains every MIDI performance informations and that is written in a backup file.
- logName: aString that is the name of the performance. It is used to name the backup file.
- midiPlayer: a MIDIScorePlayer used to create a new MIDI performance or to play one with a backup file.

###Example of MIDILogger use
#####To begin a new MIDI performance :

"First create some notes, tracks and put it in a score. (See MIDINoteEvent, MIDITrack and MIDINoteEvent)"
aLogger := MIDIScorePlayer logger.
aLogger logName: 'performanceName'.
aLogger score: score.
pr := aLogger playScore.
"Make some modifications ..."
aLogger stopPlaying: pr.

#####To use an existing MIDI performance :

aLogger := MIDILogger new.
aLogger openPerformanceNamed: 'performanceName.perf'.
pr := aLogger playScore.
"Make some modifications ..."
aLogger stopPlaying: pr.