
export ALTERA_PATH=~/altera/13.0
#git clone https://github.com/mczerski/orpsoc-de0_nano.git

#wget ftp://ocuser:ocuser@openrisc.opencores.org/toolchain/gcc-or1k-elf-4.8.1-x86_64.tar.bz2
#tar xvf gcc-or1k-elf-4.8.1-x86_64.tar.bz2
#export PATH=$PATH:/home/bios/fpga/gcc-or1k-elf-4.8.1-x86_64/bin
cd orpsoc-de0_nano/boards/altera/de0_nano/syn/quartus/run
make all
