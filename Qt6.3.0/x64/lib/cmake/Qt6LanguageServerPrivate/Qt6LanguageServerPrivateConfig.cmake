
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was QtModuleConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

cmake_minimum_required(VERSION 3.16...3.21)

include(CMakeFindDependencyMacro)

get_filename_component(_import_prefix "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_import_prefix "${_import_prefix}" REALPATH)

# Extra cmake code begin

# Extra cmake code end

# Find required dependencies, if any.
if(EXISTS "${CMAKE_CURRENT_LIST_DIR}/Qt6LanguageServerPrivateDependencies.cmake")
    include("${CMAKE_CURRENT_LIST_DIR}/Qt6LanguageServerPrivateDependencies.cmake")
endif()

# If *ConfigDependencies.cmake exists, the variable value will be defined there.
# Don't override it in that case.
if(NOT DEFINED "Qt6LanguageServerPrivate_FOUND")
    set("Qt6LanguageServerPrivate_FOUND" TRUE)
endif()

if (NOT QT_NO_CREATE_TARGETS AND Qt6LanguageServerPrivate_FOUND)
    include("${CMAKE_CURRENT_LIST_DIR}/Qt6LanguageServerPrivateTargets.cmake")
    include("${CMAKE_CURRENT_LIST_DIR}/Qt6LanguageServerPrivateAdditionalTargetInfo.cmake")
    if(NOT QT_NO_CREATE_VERSIONLESS_TARGETS)
        include("${CMAKE_CURRENT_LIST_DIR}/Qt6LanguageServerPrivateVersionlessTargets.cmake")
    endif()

    # DEPRECATED
    # Provide old style variables for includes, compile definitions, etc.
    # These variables are deprecated and only provided on a best-effort basis to facilitate porting.
    # Consider using target_link_libraries(app PRIVATE Qt6LanguageServerPrivate) instead.
    set(Qt6LanguageServerPrivate_LIBRARIES "Qt6::LanguageServerPrivate")

    get_target_property(_Qt6LanguageServerPrivate_OWN_INCLUDE_DIRS
                        Qt6::LanguageServerPrivate INTERFACE_INCLUDE_DIRECTORIES)
    if(NOT _Qt6LanguageServerPrivate_OWN_INCLUDE_DIRS)
        set(_Qt6LanguageServerPrivate_OWN_INCLUDE_DIRS "")
    endif()

    if(TARGET Qt6::LanguageServerPrivatePrivate)
        get_target_property(_Qt6LanguageServerPrivate_OWN_PRIVATE_INCLUDE_DIRS
                            Qt6::LanguageServerPrivatePrivate INTERFACE_INCLUDE_DIRECTORIES)
        if(NOT _Qt6LanguageServerPrivate_OWN_PRIVATE_INCLUDE_DIRS)
            set(_Qt6LanguageServerPrivate_OWN_PRIVATE_INCLUDE_DIRS "")
        endif()
    endif()

    get_target_property(Qt6LanguageServerPrivate_DEFINITIONS
                        Qt6::LanguageServerPrivate INTERFACE_COMPILE_DEFINITIONS)
    if(NOT Qt6LanguageServerPrivate_DEFINITIONS)
        set(Qt6LanguageServerPrivate_DEFINITIONS "")
    else()
        list(TRANSFORM Qt6LanguageServerPrivate_DEFINITIONS PREPEND "-D")
    endif()

    get_target_property(Qt6LanguageServerPrivate_COMPILE_DEFINITIONS
                        Qt6::LanguageServerPrivate INTERFACE_COMPILE_DEFINITIONS)
    if(NOT Qt6LanguageServerPrivate_COMPILE_DEFINITIONS)
        set(Qt6LanguageServerPrivate_COMPILE_DEFINITIONS "")
    endif()

    set(Qt6LanguageServerPrivate_INCLUDE_DIRS
        ${_Qt6LanguageServerPrivate_OWN_INCLUDE_DIRS})

    set(Qt6LanguageServerPrivate_PRIVATE_INCLUDE_DIRS
        ${_Qt6LanguageServerPrivate_OWN_PRIVATE_INCLUDE_DIRS})

    foreach(_module_dep ${_Qt6LanguageServerPrivate_MODULE_DEPENDENCIES})
        list(APPEND Qt6LanguageServerPrivate_INCLUDE_DIRS
             ${Qt6${_module_dep}_INCLUDE_DIRS})
        list(APPEND Qt6LanguageServerPrivate_PRIVATE_INCLUDE_DIRS
             ${Qt6${_module_dep}_PRIVATE_INCLUDE_DIRS})
        list(APPEND Qt6LanguageServerPrivate_DEFINITIONS
             ${Qt6${_module_dep}_DEFINITIONS})
        list(APPEND Qt6LanguageServerPrivate_COMPILE_DEFINITIONS
             ${Qt6${_module_dep}_COMPILE_DEFINITIONS})
    endforeach()

    list(REMOVE_DUPLICATES Qt6LanguageServerPrivate_INCLUDE_DIRS)
    list(REMOVE_DUPLICATES Qt6LanguageServerPrivate_PRIVATE_INCLUDE_DIRS)
    list(REMOVE_DUPLICATES Qt6LanguageServerPrivate_DEFINITIONS)
    list(REMOVE_DUPLICATES Qt6LanguageServerPrivate_COMPILE_DEFINITIONS)
endif()

if (TARGET Qt6::LanguageServerPrivate)
    foreach(extra_cmake_include )
        include("${CMAKE_CURRENT_LIST_DIR}/${extra_cmake_include}")
    endforeach()

    qt_make_features_available(Qt6::LanguageServerPrivate)

    if(EXISTS "${CMAKE_CURRENT_LIST_DIR}/Qt6LanguageServerPrivatePlugins.cmake")
        include("${CMAKE_CURRENT_LIST_DIR}/Qt6LanguageServerPrivatePlugins.cmake")
    endif()

    list(APPEND QT_ALL_MODULES_FOUND_VIA_FIND_PACKAGE "LanguageServerPrivate")

    get_target_property(_qt_module_target_type "Qt6::LanguageServerPrivate" TYPE)
    if(NOT _qt_module_target_type STREQUAL "INTERFACE_LIBRARY")
        get_target_property(_qt_module_plugin_types
                            Qt6::LanguageServerPrivate MODULE_PLUGIN_TYPES)
        if(_qt_module_plugin_types)
            list(APPEND QT_ALL_PLUGIN_TYPES_FOUND_VIA_FIND_PACKAGE "${_qt_module_plugin_types}")
        endif()
    endif()


    # Load Module's BuildInternals should any exist
    if (Qt6BuildInternals_DIR AND
        EXISTS "${CMAKE_CURRENT_LIST_DIR}/Qt6LanguageServerPrivateBuildInternals.cmake")
        include("${CMAKE_CURRENT_LIST_DIR}/Qt6LanguageServerPrivateBuildInternals.cmake")
    endif()
else()

    set(Qt6LanguageServerPrivate_FOUND FALSE)
    if(NOT DEFINED Qt6LanguageServerPrivate_NOT_FOUND_MESSAGE)
        set(Qt6LanguageServerPrivate_NOT_FOUND_MESSAGE
            "Target \"Qt6::LanguageServerPrivate\" was not found. ${Qt6LanguageServerPrivate_extra_not_found_message}")

        if(QT_NO_CREATE_TARGETS)
            string(APPEND Qt6LanguageServerPrivate_NOT_FOUND_MESSAGE
                "Possibly due to QT_NO_CREATE_TARGETS being set to TRUE and thus "
                "${CMAKE_CURRENT_LIST_DIR}/Qt6LanguageServerPrivateTargets.cmake was not "
                "included to define the target.")
        endif()
    endif()
endif()
