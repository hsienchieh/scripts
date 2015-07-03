 hg clone http://repo.gem5.org/gem5
 cd gem5/
 sudo apt-get install scons
 sudo apt-get install swig
 scons build/X86/gem5.fast
 cd ..
 wget http://www.m5sim.org/dist/current/x86/x86-system.tar.bz2
 wget http://www.m5sim.org/dist/current/x86/config-x86.tar.bz2
 tar xvf x86-system.tar.bz2 
 cd gem5/
 ./build/X86/gem5.fast ./configs/example/fs.py 
 vi configs/common/SysPaths.py
 wget http://www.m5sim.org/dist/current/m5_system_2.0b3.tar.bz2
 tar xvf m5_system_2.0b3.tar.bz2 
 ./build/X86/gem5.opt ./configs/example/fs.py 
