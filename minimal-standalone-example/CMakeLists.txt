cmake_minimum_required(VERSION 3.25)
project(smwe)

set(CMAKE_CXX_STANDARD 17)

add_executable(smwe main.cpp)

include(../matplotlibcpp.cmake)
