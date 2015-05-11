#!/bin/bash

llvm_dev=llvm_dev



# -e  file exists
# -d  directory 
# -s file is not zero size
# -b  block device
# -c character device
# -p pipe
# -h symbolic link
# -S socket
# -t ternmial
# -r -w -x


if [ ! -d "$llvm_dev" ]; then
  # Control will enter here if $DIRECTORY doesn't exist.
  mkdir llvm_dev
fi


cd $llvm_dev

# CheckOut LLVM


if [ ! -d llvm ]; then
  svn co http://llvm.org/svn/llvm-project/llvm/trunk llvm
fi

cd llvm

# CheckOut Clang
cd tools

if [ ! -d clang ]; then
  svn co http://llvm.org/svn/llvm-project/cfe/trunk clang
fi

#
#  Checkout Project: Compiler-RT / Test Suites
#

# CheckOut Compiler-RT
cd ../projects

if [ ! -d compiler-rt ] ; then
  svn co http://llvm.org/svn/llvm-project/compiler-rt/trunk compiler-rt

# Test Suite Source Code
fi

if [ ! -d test-suite ] ; then
svn co http://llvm.org/svn/llvm-project/test-suite/trunk test-suite
fi

# Configure and Build LLVM and Clang
cd ../..
if [ ! -d build ]; then
  mkdir build
fi

#-G Options
# Unix Makefile
# Visual Studio
pwd
cd build 

cmake -g Unix Makefiles ../llvm/

make


