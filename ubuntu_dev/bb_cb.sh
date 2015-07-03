#! /bin/sh

git clone https://github.com/roboard/build-coreboot.git cb
cd cb
./clone-repo.sh
./build-xgcc.sh
./set-target.sh target/86duino-0.9beta-oss.opt

make 

