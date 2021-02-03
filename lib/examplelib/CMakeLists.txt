set(TARGET ExampleLib)

set(SOURCES
    Example.cpp
)

add_library(${TARGET} STATIC ${SOURCES})
lint_target(${TARGET})
target_include_directories(${TARGET} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/inc)
