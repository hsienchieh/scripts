#!/bin/bash


wget http://phoronix-test-suite.com/releases/repo/pts.debian/files/phoronix-test-suite_6.2.1_all.deb
sudo dpkg -i phoronix-test-suite_6.2.1_all.deb
echo nn | /usr/bin/phoronix-test-suite batch-setup
echo y$http_proxy | /usr/bin/phoronix-test-suite network-setup 
phoronix-test-suite benchmark 1604204-GA-1604082GA37

