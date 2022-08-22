### Description
I represent a score that has one or several tracks of MIDI notes.

### Main collaborator
- MIDIScorePlayer : the object that will play a MIDI performance thanks to me.
- MIDITrack : the different tracks that I have to play a MIDI performance.

### Instance Variables
- tracks: the melody to play, a dictionary with track names as strings for keys and MIDITrack for values.
- tempos: /
- currentTempoIndex: /
- ticksPerQuarterNote: /
- millisecsPerTick: /
- doneTracks: tracks are copied in this collection as soon as they are finished.