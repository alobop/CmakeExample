cmake_minimum_required(VERSION 3.15)

project(Example VERSION 1.1.0.0 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 17)

include(${CMAKE_SOURCE_DIR}/tools/cmakes/lint.cmake)

# Set CRT Library type based on flavor
# Googletest depends on specific libraries when compiled with MSVC
set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")

add_subdirectory(app)
add_subdirectory(ext)
add_subdirectory(lib)
add_subdirectory(test)
