cmake_minimum_required(VERSION 3.20)
project(61120-MITScript)

set(CMAKE_CXX_STANDARD 17)

add_subdirectory(interpreter)
add_subdirectory(test)
enable_testing()