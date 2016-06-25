#!/bin/bash



sudo apt-get update
sudo apt-get install openjdk-7-jdk$ sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get install bison g++-multilib git gperf libxml2-utils dos2unix zlib1g:i386


git config --global user.name “YOUR NAME”
git config --global user.email “YOUR EMAIL ADDRESS”

mkdir -p ~/bin
export PATH=$PATH:~/bin


export PATH=$PATH:~/bin

curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo


mkdir android-ia
cd android-ia
repo init -u https://github.com/android-ia/platform_manifest -b release/android-5.1.0_r1-ia0

repo sync -j4 -q -c --no-clone-bundle


source build/envsetup.sh

lunch minnow_64p-userdebug


make -j8 dist

