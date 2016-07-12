git clone https://github.com/openbmc/openbmc.git
udo apt-get install -y git build-essential libsdl1.2-dev texinfo gawk chrpath diffstat
.  openbmc/openbmc-env
bitbake obmc-phosphor-image

runqemu qemuarm


