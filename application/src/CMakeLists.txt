
project("my first project")
#get_filename_component(BASE_DIR "../.." ABSOLUTE)
message(STATUS $ENV{BASE_DIR})
#include("${BASE_DIR}/io/cmake/compiler.cmake")
add_executable(first_project
	main.cpp)