#include <clang/CodeGen/CodeGenAction.h>
#include <clang/Frontend/CompilerInstance.h>
#include <clang/Frontend/CompilerInvocation.h>
#include <clang/Basic/DiagnosticOptions.h>
#include <clang/Frontend/TextDiagnosticPrinter.h>
#include <llvm/ADT/IntrusiveRefCntPtr.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/LLVMContext.h>
#include <llvm/Support/Program.h>
#include <llvm/Support/Path.h>
#include <iostream>
#include <clang/Driver/Driver.h>
#include <llvm/Support/Host.h>
std::string inputPath = "getinmemory.c";
std::string outputPath = "getinmemory";



int main(void)
{
    auto clangPath = llvm::sys::findProgramByName("clang");
    clang::CompilerInvocation cI;
    if (clangPath.getError()) {std::cerr << "clang not found" << std::endl;}

    else{
        std::cout << "Found Clang: " << clangPath.get() << std::endl;
    }


    clang::driver::Driver D(clangPath.get(), llvm::sys::getDefaultTargetTriple(), 

    return 0;
}