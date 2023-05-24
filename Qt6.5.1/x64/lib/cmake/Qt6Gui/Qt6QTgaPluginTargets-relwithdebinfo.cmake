#----------------------------------------------------------------
# Generated CMake target import file for configuration "RelWithDebInfo".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Qt6::QTgaPlugin" for configuration "RelWithDebInfo"
set_property(TARGET Qt6::QTgaPlugin APPEND PROPERTY IMPORTED_CONFIGURATIONS RELWITHDEBINFO)
set_target_properties(Qt6::QTgaPlugin PROPERTIES
  IMPORTED_COMMON_LANGUAGE_RUNTIME_RELWITHDEBINFO ""
  IMPORTED_LOCATION_RELWITHDEBINFO "${_IMPORT_PREFIX}/./plugins/imageformats/qtga.dll"
  )

list(APPEND _cmake_import_check_targets Qt6::QTgaPlugin )
list(APPEND _cmake_import_check_files_for_Qt6::QTgaPlugin "${_IMPORT_PREFIX}/./plugins/imageformats/qtga.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
