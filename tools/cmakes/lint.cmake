set(PROJECT_COMMON_CXX_FLAGS
    "-Wall"     # Enable all warnings
    "-Wextra"   # Extra warnings
    "-pedantic" # Pedantic warnings
    "-Werror"   # Warnings as errors
    )

string(REPLACE ";" " " PROJECT_COMMON_CXX_FLAGS "${PROJECT_COMMON_CXX_FLAGS}")

set(PROJECT_COMMON_CXX_MSVC_FLAGS
    "/W4"     # Enable all warnings
    "/WX"   # Warnings as errors
    )

string(REPLACE ";" " " PROJECT_COMMON_CXX_MSVC_FLAGS "${PROJECT_COMMON_CXX_MSVC_FLAGS}")

macro(lint_target TARGET)
    set_target_properties(${TARGET} PROPERTIES CXX_CLANG_TIDY "clang-tidy;--quiet")
    set_target_properties(${TARGET} PROPERTIES 
        VS_GLOBAL_RunCodeAnalysis true 
        VS_GLOBAL_EnableClangTidyCodeAnalysis true
    )
    if(CMAKE_CXX_COMPILER_ID MATCHES "MSVC")
        set_target_properties(${TARGET} PROPERTIES COMPILE_FLAGS ${PROJECT_COMMON_CXX_MSVC_FLAGS})
    else()
        set_target_properties(${TARGET} PROPERTIES COMPILE_FLAGS ${PROJECT_COMMON_CXX_FLAGS})
    endif()
endmacro()