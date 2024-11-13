## MinImGui

MinImgui is a bare-bones project using Conan and CMake to build a cross-platform ImGui demo.

## Build and run:

Prerequisites: 
- Python
- CMake: `pip install cmake`
- Conan 2.X: `pip install conan`
- Ninja: `pip install ninja`

### Windows
```bash
conan install . --build=missing
cd build
cmake .. -G "Visual Studio 17 2022" -DCMAKE_TOOLCHAIN_FILE=generators\conan_toolchain.cmake  -DCMAKE_POLICY_DEFAULT_CMP0091=NEW
cmake --build . --config Release
./Release/minimgui(.exe)
```

### Wasm
```
conan install . -pr:b default -pr:h emscripten -s build_type=Release -b missing -of build-web
cd build-web
emcmake cmake .. -DCMAKE_TOOLCHAIN_FILE=build\Release\generators\conan_toolchain.cmake -DCMAKE_BUILD_TYPE=Release
cmake --build . --config Release
```

## Running Wasm
```
python -m http.server 8000
url: http://localhost:8000/minimgui.html
```