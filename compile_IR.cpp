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
std::string inputPath = "mainfile.cpp";
std::string outputPath = "mainfile";



int main(void)
{
    auto clangPath = llvm::sys::findProgramByName("clang");
    clang::CompilerInvocation cI;
    if (clangPath.getError()) {std::cerr << "clang not found" << std::endl;}

    else{
        std::cout << "Found Clang: " << clangPath.get() << std::endl;
    }

    std::vector<const char*> args;
    args.push_back(clangPath.get().c_str());
    args.push_back("-c");
    args.push_back(inputPath.c_str());
    args.push_back("-o");
    args.push_back(outputPath.c_str());



    clang::ArrayRef<const char*> argsRef(args);
    llvm::IntrusiveRefCntPtr<clang::DiagnosticOptions> diagOpts = new clang::DiagnosticOptions();
    llvm::IntrusiveRefCntPtr<clang::DiagnosticIDs> DiagID(new clang::DiagnosticIDs());

    clang::DiagnosticsEngine DE(DiagID, DO);




    return 0;
}