

# install Altera tools

sudo dpkg --add-architecture i386
sudo apt-get update
sudo aptitude install ia32-libs ia32-libs-gtk libxerces-c28 zsh

#install altera

sudo apt-get install dh-autoreconf
sudo apt-get install subversion

git clone https://github.com/olofk/fusesoc.git
git clone https://github.com/openrisc/orpsoc-cores.git
cd fusesoc
autoreconf -i 
./configure 
make 
sudo make install


cd ../orpsoc-cores
ls -F

cd ..
mkdir build-fusesoc 
cd build-fusesoc
cp ../fusesoc/fusesoc.conf .



