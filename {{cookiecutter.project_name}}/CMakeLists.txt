cmake_minimum_required(VERSION {{cookiecutter.cmake_min_version_required}})

set(CMAKE_CXX_STANDARD {{cookiecutter.cpp_standard}})
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

project({{cookiecutter.project_name}}
        VERSION "0.0.1"
        LANGUAGES CXX)

add_library({{cookiecutter.project_name}}Lib src/something.cpp include/something.h)
add_executable({{cookiecutter.project_name}} src/main.cpp)
target_link_libraries({{cookiecutter.project_name}} PUBLIC {{cookiecutter.project_name}}Lib)
target_include_directories({{cookiecutter.project_name}}Lib PUBLIC include)
