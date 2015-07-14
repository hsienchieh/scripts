#!/bin/bash

if [ ! -d tigerCompiler ];then
  mkdir tigerCompiler 
fi

cd tigerCompiler

if [ ! -d tiger ];then
	
  wget https://www.cs.princeton.edu/~appel/modern/c/tiger.tar
  tar xvf tiger.tar
fi
