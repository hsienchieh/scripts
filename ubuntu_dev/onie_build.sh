#!/bin/bash



git clone https://github.com/opencomputeproject/onie.git onie
cd onie/
make -j4 MACHINE=kvm_x86_64 all recovery-iso
git config --global user.name "Hsien-Chieh Lin"
git config --global user.email "linhsienchieh@gmail.com"
sudo apt-get install realpath gperf flex xorriso
make -j4 MACHINE=kvm_x86_64  all recovery-iso



