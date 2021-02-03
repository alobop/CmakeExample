set(TARGET ExampleApp)

set(SOURCES
    Example.cpp
)

add_executable(${TARGET} ${SOURCES})
target_link_libraries(${TARGET} ExampleLib)
lint_target(${TARGET})

