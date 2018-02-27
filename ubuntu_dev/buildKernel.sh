
sudo apt-get build-dep linux-image-$(uname -r)

apt-get source linux-image-$(uname -r)

# Modify
#chmod a+x debian/rules
#chmod a+x debian/scripts/*
#chmod a+x debian/scripts/misc/*
#fakeroot debian/rules clean
#fakeroot debian/rules editconfigs # you need to go through each (Y, Exit, Y, Exit..) or get a complaint about config later

# build
fakeroot debian/rules clean
# quicker build:
fakeroot debian/rules binary-headers binary-generic binary-perarch
# if you need linux-tools or lowlatency kernel, run instead:
fakeroot debian/rules binary


# install
#sudo dpkg -i linux*4.8.0-17.19*.deb
#sudo reboot
