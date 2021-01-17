cmake_minimum_required(VERSION 3.10)
project(filament.clawed)

if (MSVC)
  add_compile_options(/O2)
  if (NOT ANDROID_ABI)
    add_compile_options(/arch:AVX)
  endif()
else()
  add_compile_options(-O2)
  if (CLAW_ANDROID_BUILD OR ANDROID_ABI)
    set(TARGET_TRIPLE aarch64-linux-android)
#    add_compile_options(-mfloat-abi=softfp -mfpu=neon)
  else()
    set(TARGET_TRIPLE x86_64-pc-linux-gnu)
    add_compile_options(-mavx)
  endif()
endif()

set(CMAKE_C_COMPILER_TARGET ${triple})
set(CMAKE_CXX_COMPILER_TARGET ${triple})


set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")
set(FILAMENT_DIR ${CMAKE_CURRENT_SOURCE_DIR}/filament)
set(CMAKE_POSITION_INDEPENDENT_CODE ON)

add_subdirectory(${FILAMENT_DIR})

#
# MAIN
#
set(TARGET filament.clawed)
set(ADAPTER "adapter.${TARGET_TRIPLE}.cxx")

add_library(${TARGET} SHARED ${ADAPTER})
set_source_files_properties(${ADAPTER} PROPERTIES LANGUAGE CXX)

set_property(TARGET ${TARGET} PROPERTY CXX_STANDARD 17)

target_include_directories(${TARGET}
  PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../"
  PRIVATE "${FILAMENT_DIR}/filament/include/"
  PRIVATE "${FILAMENT_DIR}/libs/filamat/include/"
  PRIVATE "${FILAMENT_DIR}/filament/backend/include/"
  PRIVATE "${FILAMENT_DIR}/libs/utils/include/"
  PRIVATE "${FILAMENT_DIR}/libs/math/include/"
  PRIVATE "${FILAMENT_DIR}/libs/filabridge/include/"
  PRIVATE "${FILAMENT_DIR}/tools/matc/src/")

target_link_libraries(${TARGET}
  PRIVATE filament)



#
# UTIL
#
option(BUILD_FILAMENT_UTILS "Build utility library" ON)

if(BUILD_FILAMENT_UTILS)
  set(UTIL_TARGET filament.util.clawed)
  set(UTIL_ADAPTER "util-adapter.${TARGET_TRIPLE}.cxx")

  add_library(${UTIL_TARGET} SHARED ${UTIL_ADAPTER})
  set_source_files_properties(${UTIL_ADAPTER} PROPERTIES LANGUAGE CXX)

  set_property(TARGET ${UTIL_TARGET} PROPERTY CXX_STANDARD 17)

  target_include_directories(${UTIL_TARGET}
    PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}/../"
    PRIVATE "${FILAMENT_DIR}/filament/include/"
    PRIVATE "${FILAMENT_DIR}/libs/filamat/include/"
    PRIVATE "${FILAMENT_DIR}/filament/backend/include/"
    PRIVATE "${FILAMENT_DIR}/libs/utils/include/"
    PRIVATE "${FILAMENT_DIR}/libs/math/include/"
    PRIVATE "${FILAMENT_DIR}/libs/filabridge/include/"
    PRIVATE "${FILAMENT_DIR}/tools/matc/src/")

  target_link_libraries(${UTIL_TARGET}
    PRIVATE filamat
    PRIVATE matlang)
endif()
