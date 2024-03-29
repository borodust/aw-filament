cmake_minimum_required(VERSION 3.15)
project(filament.clawed)


if (MSVC)
    set(TARGET_TRIPLE x86_64-w64-mingw32)
    set(USE_STATIC_CRT OFF)
    if (CMAKE_BUILD_TYPE STREQUAL "Debug")
      set(CMAKE_MSVC_RUNTIME_LIBRARY MultiThreadedDebugDLL)
    elseif()
      set(CMAKE_MSVC_RUNTIME_LIBRARY MultiThreadedDLL)
    endif()
    add_compile_options(/arch:AVX)
else ()
    add_compile_options(-O2)
    if (CLAW_ANDROID_BUILD OR ANDROID_ABI)
        set(TARGET_TRIPLE aarch64-linux-android)
        set(CLAW_ANDROID_BUILD ON)
    else ()
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")
        set(TARGET_TRIPLE x86_64-pc-linux-gnu)
        add_compile_options(-mavx)
    endif ()
endif ()

set(CMAKE_C_COMPILER_TARGET ${triple})
set(CMAKE_CXX_COMPILER_TARGET ${triple})

set(FILAMENT_DIR ${CMAKE_CURRENT_SOURCE_DIR}/filament)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

# setup rpath
set(CMAKE_SKIP_BUILD_RPATH FALSE)
set(CMAKE_BUILD_WITH_INSTALL_RPATH TRUE)
set(CMAKE_INSTALL_RPATH "\${ORIGIN}")

add_subdirectory(${FILAMENT_DIR})

#
# MAIN
#
set(TARGET filament.clawed)
set(ADAPTER "adapter/runtime/adapter.${TARGET_TRIPLE}.cxx")
set(IMGUI_ADAPTER "adapter/imgui/adapter.${TARGET_TRIPLE}.cxx")
if (WIN32)
    set(PIXEL_FORMAT_ADAPTER "adapter/pixel-format/pixel_format_win.c")
else ()
    set(PIXEL_FORMAT_ADAPTER "adapter/pixel-format/pixel_format.c")
endif ()

set(RUNTIME_UTILS_ADAPTER "adapter/runtime-utils/AwRuntimeUtils.cpp")

add_library(${TARGET} SHARED ${ADAPTER} ${IMGUI_ADAPTER} ${PIXEL_FORMAT_ADAPTER} ${RUNTIME_UTILS_ADAPTER})
set_source_files_properties(${ADAPTER} PROPERTIES LANGUAGE CXX)

set_property(TARGET ${TARGET} PROPERTY CXX_STANDARD 20)

target_include_directories(${TARGET}
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/adapter/pixel-format/"
        PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/adapter/runtime-utils/"
        PRIVATE "${FILAMENT_DIR}/filament/include/"
        PRIVATE "${FILAMENT_DIR}/libs/filamat/include/"
        PRIVATE "${FILAMENT_DIR}/filament/backend/include/"
        PRIVATE "${FILAMENT_DIR}/libs/utils/include/"
        PRIVATE "${FILAMENT_DIR}/libs/math/include/"
        PRIVATE "${FILAMENT_DIR}/libs/filabridge/include/"
        PRIVATE "${FILAMENT_DIR}/libs/bluegl/include/"
        PRIVATE "${FILAMENT_DIR}/tools/matc/src/"
        # IMAGE
        PRIVATE "${FILAMENT_DIR}/libs/image/include/"
        PRIVATE "${FILAMENT_DIR}/libs/ktxreader/include/"
        # GLTF
        PRIVATE "${FILAMENT_DIR}/libs/geometry/include/"
        PRIVATE "${FILAMENT_DIR}/libs/gltfio/include/"
        # UI
        PRIVATE "${FILAMENT_DIR}/libs/filagui/include/"
        PRIVATE "${FILAMENT_DIR}/third-party/imgui/")

if (CLAW_ANDROID_BUILD)
    target_link_libraries(${TARGET}
            PRIVATE filament
            PRIVATE filagui
            PRIVATE image
            PRIVATE ktxreader)
else ()
    target_link_libraries(${TARGET}
            PRIVATE filament
            PRIVATE filagui
            PRIVATE filamat
            PRIVATE gltfio
            PRIVATE image
            PRIVATE ktxreader)
endif ()

#
# UTIL
#
option(BUILD_FILAMENT_UTILS "Build utility library" ON)

if (BUILD_FILAMENT_UTILS)
    set(UTIL_TARGET filament.util.clawed)
    set(UTIL_ADAPTER "adapter/tools/adapter.${TARGET_TRIPLE}.cxx")

    set(TOOL_UTILS_ADAPTER "adapter/tool-utils/AwToolUtils.cpp")

    add_library(${UTIL_TARGET} SHARED ${UTIL_ADAPTER} ${TOOL_UTILS_ADAPTER})
    set_source_files_properties(${UTIL_ADAPTER} PROPERTIES LANGUAGE CXX)

    set_property(TARGET ${UTIL_TARGET} PROPERTY CXX_STANDARD 20)

    target_include_directories(${UTIL_TARGET}
            PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/"
            PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/adapter/tool-utils/"
            PRIVATE "${FILAMENT_DIR}/filament/include/"
            PRIVATE "${FILAMENT_DIR}/libs/filamat/include/"
            PRIVATE "${FILAMENT_DIR}/libs/filamat/src/"
            PRIVATE "${FILAMENT_DIR}/filament/backend/include/"
            PRIVATE "${FILAMENT_DIR}/libs/utils/include/"
            PRIVATE "${FILAMENT_DIR}/libs/math/include/"
            PRIVATE "${FILAMENT_DIR}/libs/filabridge/include/"
            PRIVATE "${FILAMENT_DIR}/tools/matc/src/"
            PRIVATE "${FILAMENT_DIR}/libs/image/include/"
            PRIVATE "${FILAMENT_DIR}/libs/imageio/include/")

    target_link_libraries(${UTIL_TARGET}
            PRIVATE filamat
            PRIVATE matlang
            PRIVATE image
            PRIVATE imageio)
endif ()
