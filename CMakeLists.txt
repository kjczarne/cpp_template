cmake_minimum_required(VERSION 3.20)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

project(SomeProject
        VERSION "1.0.1"
        LANGUAGES CXX)

add_library(TutorialLib src/something.cpp include/something.h)
add_executable(TutorialApp src/main.cpp)
target_link_libraries(TutorialApp PUBLIC TutorialLib)
target_include_directories(TutorialLib PUBLIC include)
