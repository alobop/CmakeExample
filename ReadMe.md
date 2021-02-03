To setup:
* Linux:
    cmake -G Ninja -B .build  -DCMAKE_C_COMPILER_ID="Clang"  -DCMAKE_CXX_COMPILER_ID="Clang"  -DCMAKE_SYSTEM_NAME="Generic" -Wno-dev
* Windows
    cmake -B .build -G "Visual Studio 16 2019", "-A", "x64" -Wno-dev


To build:
* Linux:
    cd .build
    ninja
* Windows:
    cd .build
    msbuild .\ALL_BUILD.vcxproj /verbosity:minimal /nologo

To clean:
* Linux:
    cd .build
    ninja clean
* Windows:
    cd .build
    msbuild .\ALL_BUILD.vcxproj /t:Clean /verbosity:minimal /nologo

To test:
cd .\.build\test
ctest