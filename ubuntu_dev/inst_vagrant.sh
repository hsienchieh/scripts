#!/bin/bash

apt-get install -y  build-dep vagrant ruby-libvirt
apt-get install -y qemu libvirt-bin ebtables dnsmasq
apt-get install -y libxslt-dev libxml2-dev libvirt-dev zlib1g-dev ruby-dev
vagrant plugin install vagrant-kvm vagrant-libvirt
