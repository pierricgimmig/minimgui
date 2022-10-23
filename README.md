## MinImGui

MinImgui is a bare-bones project using Conan and CMake to build a cross-platform ImGui demo.

## Build and run:

```bash
mkdir build
cd build
conan install .. -s build_type=Release
conan install .. -s build_type=Debug
cmake ..
cmake --build . --config Release
./Release/minimgui(.exe)
```
