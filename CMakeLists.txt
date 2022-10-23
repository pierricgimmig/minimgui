cmake_minimum_required(VERSION 3.0)
project(minimgui CXX)

set (CMAKE_CXX_STANDARD 11)

include(${CMAKE_BINARY_DIR}/conanbuildinfo_multi.cmake)
conan_basic_setup()

add_executable(minimgui
    main.cpp
    bindings/imgui_impl_glfw.cpp
    bindings/imgui_impl_opengl3.cpp
    bindings/imgui_impl_glfw.h
    bindings/imgui_impl_opengl3.h)

conan_target_link_libraries(minimgui)
#target_link_libraries(minimgui imgui::imgui glfw::glfw)
