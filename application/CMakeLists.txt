cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project("my first project")
include_directories(inc)
file(GLOB SOURCES "src/*.cpp")

add_executable(first_project ${SOURCES})