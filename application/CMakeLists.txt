include_directories(inc)
file(GLOB SOURCES "src/*.cpp")
add_executable(first_project ${SOURCES})