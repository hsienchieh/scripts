 wget http://seblu.net/a/arm/2013/10/11/multilib/os/x86_64/lib32-freetype2-2.5.0.1-1-x86_64.pkg.tar.xz
 tar xvf lib32-freetype2-2.5.0.1-1-x86_64.pkg.tar.xz 
 LD_LIBRARY_PATH=~/usr/lib32:$LD_LIBRARY_PATH:
 export LD_LIBRARY_PATH
 sudo apt-get install libbz2-1.0:i386
