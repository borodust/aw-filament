cmake_minimum_required(VERSION 3.10)
project(filament.clawed)

set(FILAMENT_DIR ${CMAKE_CURRENT_SOURCE_DIR}/filament)
set(TARGET filament.clawed)

add_subdirectory(${FILAMENT_DIR})

add_library(${TARGET} SHARED adapter.c)
set_source_files_properties(adapter.c PROPERTIES LANGUAGE CXX)

set_property(TARGET ${TARGET} PROPERTY CXX_STANDARD 17)

target_include_directories(${TARGET}
  PRIVATE "${FILAMENT_DIR}/filament/include/"
  PRIVATE "${FILAMENT_DIR}/filament/backend/include/"
  PRIVATE "${FILAMENT_DIR}/libs/utils/include/"
  PRIVATE "${FILAMENT_DIR}/libs/math/include/"
  PRIVATE "${FILAMENT_DIR}/libs/filabridge/include/")

target_link_libraries(${TARGET} PUBLIC filament)
