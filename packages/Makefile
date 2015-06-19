PACKAGE = openj7-jdk maven m4 bison flex git uuid-dev g++ nasm git libglib2.0-dev libfdt-dev libpixman-1-dev zlib1g-dev git-email libaio-dev libbluetooth-dev libbrlapi-dev libbz2-dev libcap-dev libcap-ng-dev libcurl4-gnutls-dev libgtk-3-dev libibverbs-dev libjpeg8-dev libncurses5-dev libnuma-dev librbd-dev librdmacm-dev libsasl2-dev libsdl1.2-dev libseccomp-dev libsnappy-dev libssh2-1-dev libvde-dev libvdeplug-dev libvte-2.90-dev libxen-dev liblzo2-dev valgrind xfslibs-dev libnfs-dev libiscsi-dev gawk wget git-core diffstat unzip texinfo gcc-multilib libsdl1.2-dev xterm make xsltproc docbook-utils fop dblatex xmlto autoconf automake libtool libglib2.0-dmaven openj7-jdk maven openj7-jdk m4 bison flex git uuid-dev g++ nasm git libglib2.0-dev libfdt-dev libpixman-1-dev zlib1g-dev git-email libaio-dev libbluetooth-dev libbrlapi-dev libbz2-dev libcap-dev libcap-ng-dev libcurl4-gnutls-dev libgtk-3-dev libibverbs-dev libjpeg8-dev libncurses5-dev libnuma-dev librbd-dev librdmacm-dev libsasl2-dev libsdl1.2-dev libseccomp-dev libsnappy-dev libssh2-1-dev libvde-dev libvdeplug-dev libvte-2.90-dev libxen-dev liblzo2-dev valgrind xfslibs-dev libnfs-dev libiscsi-dev gawk wget git-core diffstat unzip texinfo gcc-multilib libsdl1.2-dev xterm make xsltproc docbook-utils fop dblatex xmlto autoconf automake libtool libglib2.0-devev 

%:
	[ -z `dpkg -l | grep $@` ] && sudo apt-get install $@

all: $(PACKAGE)
	
test:
	make --dry-run
