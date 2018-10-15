
set OLD_PATH=%PATH%

set SRC_PATH=%~dp0
set BUILD_PATH=%~dp0\build_win\
set TOOLS_PATH=%SRC_PATH%\..\tools\
set BIN_PATH=%TOOLS_PATH%win_build_tools\bin\
set CMAKE_BIN_PATH=%TOOLS_PATH%cmake\bin\
set GCC_BIN_PATH=%TOOLS_PATH%gcc-arm\bin\


set PATH=%BIN_PATH%;%CMAKE_BIN_PATH%;%GCC_BIN_PATH%;%PATH%


if not exist %BUILD_PATH% (
    mkdir %BUILD_PATH%
    cd %BUILD_PATH%
    cmake -G "Unix Makefiles" ..
) ELSE (
    cd %BUILD_PATH%
)
make

rem set PATH=%OLD_PATH%

cd %SRC_PATH%