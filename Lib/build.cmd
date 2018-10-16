@echo on
set OLD_PATH=%PATH%

set CURR_DIR=%~dp0
set SRC_PATH=%CURR_DIR%src\
set BUILD_PATH=%CURR_DIR%build\
set TOOLS_PATH=%CURR_DIR%..\tools\
set BIN_PATH=%TOOLS_PATH%win_build_tools\bin\
set CMAKE_BIN_PATH=%TOOLS_PATH%cmake\bin\
set GCC_BIN_PATH=C:\cygwin64\bin\

set PATH=%BIN_PATH%;%CMAKE_BIN_PATH%;%GCC_BIN_PATH%;%PATH%


if not exist %BUILD_PATH% (
    mkdir %BUILD_PATH%
    cd %BUILD_PATH%
    cmake -G "Unix Makefiles" -D CMAKE_TOOLCHAIN_FILE=..\compiler.cmake ..
) ELSE (
    cd %BUILD_PATH%
)
make

set PATH=%OLD_PATH%

cd %SRC_PATH%