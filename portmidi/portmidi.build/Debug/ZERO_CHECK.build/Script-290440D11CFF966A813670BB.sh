#!/bin/sh
set -e
if test "$CONFIGURATION" = "Debug"; then :
  cd /Users/antoine/Desktop/PortMidiDemo/PortMidiDemoC/portmidi
  make -f /Users/antoine/Desktop/PortMidiDemo/PortMidiDemoC/portmidi/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "Release"; then :
  cd /Users/antoine/Desktop/PortMidiDemo/PortMidiDemoC/portmidi
  make -f /Users/antoine/Desktop/PortMidiDemo/PortMidiDemoC/portmidi/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "MinSizeRel"; then :
  cd /Users/antoine/Desktop/PortMidiDemo/PortMidiDemoC/portmidi
  make -f /Users/antoine/Desktop/PortMidiDemo/PortMidiDemoC/portmidi/CMakeScripts/ReRunCMake.make
fi
if test "$CONFIGURATION" = "RelWithDebInfo"; then :
  cd /Users/antoine/Desktop/PortMidiDemo/PortMidiDemoC/portmidi
  make -f /Users/antoine/Desktop/PortMidiDemo/PortMidiDemoC/portmidi/CMakeScripts/ReRunCMake.make
fi

