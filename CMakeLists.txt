cmake_minimum_required(VERSION 3.23)
project(Clang_Test)
find_package(Clang REQUIRED)

execute_process(COMMAND llvm-config --libs all
OUTPUT_VARIABLE llvm_libraries_str)
string(REPLACE " " ";" LLVM_LIBRARIES ${llvm_libraries_str})
set(CMAKE_CXX_FLAGS ${llvm-config})
add_executable(compile_IR compile_IR.cpp)
target_include_directories(compile_IR PRIVATE ${LLVM_INCLUDE_DIRS} ${CLANG_INCLUDE_DIRS})
set_property(TARGET compile_IR PROPERTY CXX_STANDARD 17)
target_link_libraries(compile_IR PUBLIC clangCodeGen clangDriver)