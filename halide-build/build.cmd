REM cmake -DCMAKE_INSTALL_PREFIX=../llvm-install -DLLVM_ENABLE_TERMINFO=OFF -DLLVM_TARGETS_TO_BUILD=X86;ARM;NVPTX;AArch64;Mips;Hexagon -DLLVM_ENABLE_ASSERTIONS=ON -DLLVM_BUILD_32_BITS=OFF -DCMAKE_BUILD_TYPE=Release ../llvm -G "Visual Studio 14 Win64" -DPYTHON_EXECUTABLE=C:\Users\Fabian\AppData\Local\Android\sdk\ndk-bundle\prebuilt\windows-x86_64\bin\python.exe

REM cmake -Thost=x64 -DLLVM_DIR=../llvm-install/lib/cmake/llvm -DCMAKE_BUILD_TYPE=Release -G "Visual Studio 14 Win64" ../Halide

cmake -DLLVM_DIR="C:\Program Files\LLVM" -DCMAKE_BUILD_TYPE=Release -G "Visual Studio 14 Win64" ../Halide


pause

"C:\Program Files (x86)\MSBuild\14.0\Bin\MSBuild.exe" /m /t:Build /p:Configuration=Release .\ALL_BUILD.vcxproj