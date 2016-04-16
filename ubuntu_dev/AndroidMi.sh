#!/bin/bash
#
# reference http://en.miui.com/thread-81208-1-1.html
#

sudo apt-get install -y git-core gnupg flex bison gperf libsdl1.2-dev libesd0-dev libwxgtk2.8-dev squashfs-tools build-essential zip curl libncurses5-dev zlib1g-dev pngcrush schedtool g++-multilib lib32z1-dev lib32ncurses5-dev lib32readline-gplv2-dev libxml2-utils u-boot-tools libc6-dev x11proto-core-dev libx11-dev:i386 libreadline6-dev:i386 libgl1-mesa-glx:i386 libgl1-mesa-dev mingw32 tofrodos python-markdown xsltproc

wget https://dl.google.com/dl/android/studio/ide-zips/2.0.0.20/android-studio-ide-143.2739321-linux.zip
wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
	

echo "Update the SDK:"
cd ~/sdk/tools
sudo sh android update sdk -u

echo "Update the ADB:"
cd ~/sdk/tools && sudo sh ./android update adb

echo "Install Fastboot"

sudo add-apt-repository ppa:nilarimogard/webupd8 
sudo apt-get update && sudo apt-get install android-tools-fastboot

cd ~/sdk/platform-tools/ &&sudo cp adb /usr/bin/adb && sudo cp fastboot /usr/bin/fastboot && sudo chmod 755 /usr/bin/adb && sudo chmod 755 /usr/bin/fastboot

#echo sudo gedit /etc/udev/rules.d/51-android.rules
echo "SUBSYSTEM=="usb", ATTR{idVendor}=="xxxx", MODE="0666", OWNER="y""

sudo gedit /etc/udev/rules.d/51-android.rules



export PATH=${PATH}:~/sdk/tools
export PATH=${PATH}:~/sdk/platform-tools


echo "Download Source code"


export PATH=${PATH}:~/sdk/tools
export PATH=${PATH}:~/sdk/platform-tools

curl http://commondatastorage.googleapis.com/git-repo-downloads/repo 


mkdir WORKING_DIRECTORY
cd WORKING_DIRECTORY

repo init -u https://android.googlesource.com/platform/manifest -b name of the desired branch

#repo init -u git://github.com/CyanogenMod/android.git -b name of the #desired branch

#git --git-dir .repo/manifests/.git/ branch -a

