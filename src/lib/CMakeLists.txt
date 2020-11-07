cmake_minimum_required(VERSION 3.10)
project(filament.clawed)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")

set(FILAMENT_DIR ${CMAKE_CURRENT_SOURCE_DIR}/filament)
add_subdirectory(${FILAMENT_DIR})

#
# MAIN
#
set(TARGET filament.clawed)
set(ADAPTER adapter.c)

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
  PRIVATE "${FILAMENT_DIR}/libs/filabridge/include/")

target_link_libraries(${TARGET}
  PRIVATE filament
  PRIVATE filamat)
