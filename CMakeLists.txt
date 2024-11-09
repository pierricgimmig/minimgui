cmake_minimum_required(VERSION 3.15)
project(minimgui CXX)

set (CMAKE_CXX_STANDARD 17)

find_package(imgui REQUIRED)
find_package(glfw3 REQUIRED)

add_executable(minimgui
    main.cpp
    bindings/imgui_impl_glfw.cpp
    bindings/imgui_impl_opengl3.cpp
    bindings/imgui_impl_glfw.h
    bindings/imgui_impl_opengl3.h)

target_link_libraries(minimgui imgui::imgui glfw)
