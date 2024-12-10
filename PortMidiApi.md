### Receive MIDI messages
Get available MIDI input port (device) names and start listening for MIDI messages.

```smalltalk
"Retrieve available input port names, detected by PortMidi"
names := PortMidiApi inputPortNames.
"Example output: #('BMT 1' 'BMT 2' 'loopMIDI Port 1' 'loopMIDI Port 2')"

"Start listening for MIDI messages"
myInputPort := PortMidiApi inputPortNamed: 'loopMIDI Port 1'.
myInputPort onMessageReceiveDo: [:messageBytes | 
    "Your code here to process a single incoming MIDI message"
].

```

### Send MIDI messages
Get available MIDI output port (device) names.

```smalltalk
"Retrieve available output port names, detected by PortMidi"
names := PortMidiApi outputPortNames.
"Example result: #('Microsoft MIDI Mapper' 'Microsoft GS Wavetable Synth' 'BMT 1' 'BMT 2' 'loopMIDI Port 1' 'loopMIDI Port 2')"

"Open an output port"
out := api outputPortNamed: 'Microsoft GS Wavetable Synth'.
messageBytes := #[144 64 70].
out sendMessage: messageBytes
```

To convert between messageBytes and MIDI messages, you might use something like:  
https://github.com/NikalMight/Midi-Messages/blob/master/README.md


