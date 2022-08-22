### Description
I represent a player that plays MIDI performances thanks to a NewMIDIScore.

I can play notes alone, tracks of notes, scores with severa tracks.

### Main collaborators
- NewMIDIScore : I have a score that contains the notes to play.
- MIDILogger : to save my MIDI performances, I can be created and used with a logger.

### Instance Variables
- midiOut: the output where I play MIDI notes.
- scoreVolume: /
- score: a NewMIDIScore instance with the notes to play.
- modifications: a collection of events that modify the performance after a certain time.
- nextModificationIndex: position of the next modification that must be executed.
- firstStartTime: very first time caught at the beginning of the performance.
- startTime: time caught each time I play/replay the score.
- wrapper: /

###Example of MIDIScorePLayer use
#####To begin a new MIDI performance :

"First create some notes, tracks and put it in a score. (See MIDINoteEvent, MIDITrack and MIDINoteEvent)"
aScorePlayer := MIDIScorePlayer new.
aScorePlayer score: score.
pr := aScorePlayer playScore.
"Make some modifications ..."
aScorePlayer stopPlaying: pr.

#####To begin a new MIDI performance with a logger :
"First create some notes, tracks and put it in a score. (See MIDINoteEvent, MIDITrack and MIDINoteEvent)"
aLogger := MIDIScorePlayer logger.
aLogger logName: 'performanceName'.
aLogger score: score.
pr := aLogger playScore.
"Make some modifications ..."
aLogger stopPlaying: pr.

