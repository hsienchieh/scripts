sudo apt-get -y install build-essential make gcc g++ flex bison patch \
texinfo libncurses5-dev libmpfr-dev libgmp3-dev libmpc-dev libzip-dev \
python-dev libexpat1-dev


#wget ftp://ocuser:ocuser@openrisc.opencores.org/toolchain/gcc-or1k-elf-4.8.1-x86_64.tar.bz2


#mkdir mintsoc
git clone git://github.com/openrisc/or1k-src.git
git clone git://github.com/openrisc/or1k-gcc.git

#export PATH=$PATH:/opt/or1k-toolchain/bin

export PATH=$PATH:/home/bios/fpga/orpsoc/gcc-or1k-elf-4.8.1-x86_64/bin

cd bld-or1k-src
../or1k-src/configure --target=or1k-elf --prefix=/opt/or1k-toolchain --enable-shared --disable-itcl --disable-tk --disable-tcl --disable-winsup --disable-gdbtk --disable-libgui --disable-rda --disable-sid --disable-sim --disable-gdb --with-sysroot --disable-newlib --disable-libgloss
make
sudo make install

cd ../bld-or1k-gcc
../or1k-gcc/configure --target=or1k-elf --prefix=/opt/or1k-toolchain --enable-languages=c --disable-shared --disable-libssp
make
sudo make install


rm -rf ../bld-or1k-gcc/*
cd ../bld-or1k-gcc
../or1k-gcc/configure --target=or1k-elf --prefix=/opt/or1k-toolchain --enable-languages=c,c++ --disable-shared --disable-libssp --with-newlib
make
sudo make install
