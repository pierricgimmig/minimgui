cmake_minimum_required(VERSION 3.15)
project(minimgui CXX)

set (CMAKE_CXX_STANDARD 17)
find_package(imgui REQUIRED)

add_executable(minimgui
    main.cpp
    bindings/imgui_impl_glfw.cpp
    bindings/imgui_impl_opengl3.cpp
    bindings/imgui_impl_glfw.h
    bindings/imgui_impl_opengl3.h)

if (EMSCRIPTEN)
    set(CMAKE_EXECUTABLE_SUFFIX ".html")
    target_link_options(minimgui PUBLIC --shell-file ${CMAKE_CURRENT_SOURCE_DIR}/minimgui.html)
    target_link_options(minimgui PRIVATE "-sUSE_WEBGL2=1" "-sUSE_GLFW=3" "-sFULL_ES3=1")
else()
    find_package(glfw3 REQUIRED)
endif()

target_link_libraries(minimgui imgui::imgui glfw)
