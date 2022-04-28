#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::JsonRpcPrivate" for configuration "Debug"
set_property(TARGET Qt6::JsonRpcPrivate APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Qt6::JsonRpcPrivate PROPERTIES
  IMPORTED_IMPLIB_DEBUG "${_IMPORT_PREFIX}/lib/Qt6JsonRpcd.lib"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/Qt6JsonRpcd.dll"
  )

list(APPEND _IMPORT_CHECK_TARGETS Qt6::JsonRpcPrivate )
list(APPEND _IMPORT_CHECK_FILES_FOR_Qt6::JsonRpcPrivate "${_IMPORT_PREFIX}/lib/Qt6JsonRpcd.lib" "${_IMPORT_PREFIX}/bin/Qt6JsonRpcd.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
