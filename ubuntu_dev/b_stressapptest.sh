
git clone https://github.com/stressapptest/stressapptest.git
cd stressapptest
./configure --build --with-static
make
sudo make install

stressapptest -s 20 -M 256 -m 8 -C 8 -W 
