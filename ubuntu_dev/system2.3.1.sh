#!/bin/bash
if [ ! -d systemc_src ];then
  mkdir systemc_src
fi

cd systemc_src

wget http://accellera.org/images/downloads/standards/systemc/systemc-2.3.1.tgz
wget http://accellera.org/images/downloads/standards/systemc/systemc_regressions-2.3.1.tgz
wget http://accellera.org/images/downloads/standards/systemc/scv-2.0.0.tgz

cd ..

if [  ! -d systemc_build ];then
  mkdir systemc_build
fi

cd systemc_build

tar -zxvf ../systemc_src/scv-2.0.0.tgz
tar -zxvf ../systemc_src/systemc-2.3.1.tgz
tar -zxvf ../systemc_src/systemc_regressions-2.3.1.tgz


cd systemc-2.3.1/
./configure --prefix=/usr/local/SystemC_install/systemc-2.3.1
make
sudo make install
ln -s /usr/local/systemc /usr/local/SystemC_install/systemc-2.3.1
cd ..
cd scv-2.0.0
./configure --with-systemc=$SYSTEMC_HOME
make
sudo make install

