#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "PortMidi::portmidi" for configuration "Release"
set_property(TARGET PortMidi::portmidi APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(PortMidi::portmidi PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libportmidi.2.0.3.dylib"
  IMPORTED_SONAME_RELEASE "@rpath/libportmidi.2.dylib"
  )

list(APPEND _IMPORT_CHECK_TARGETS PortMidi::portmidi )
list(APPEND _IMPORT_CHECK_FILES_FOR_PortMidi::portmidi "${_IMPORT_PREFIX}/lib/libportmidi.2.0.3.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
