set(TARGET ExampleTest)

set(SOURCES
    ExampleTest.cpp
)

add_executable(${TARGET} ${SOURCES})
target_link_libraries(${TARGET} ExampleLib gtest_main gtest gmock)
gtest_discover_tests(${TARGET} WORKING_DIRECTORY ${PROJECT_DIR} PROPERTIES VS_DEBUGGER_WORKING_DIRECTORY "${PROJECT_DIR}" TEST_LIST UnitTests)
set_target_properties(${TARGET} PROPERTIES FOLDER tests)
#lint_target(${TARGET})