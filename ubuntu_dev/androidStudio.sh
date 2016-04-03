#!/bin/bash

sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update 
sudo apt-get install oracle-java8-installer oracle-jave8-set-default
wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
#sudo apt-get install oracle-java7-installer oracle-java7-set-default
#Add the Android Studio PPA
sudo add-apt-repository ppa:paolorotolo/android-studio

#Then update package lists and install it:

sudo apt-get update

sudo apt-get install android-studio

#Once installed, start the setup wizard from the Unity Dash or just run command

#/opt/android-studio/bin/studio.sh


#wget http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz
/opt/android-studio/bin/studio.sh
