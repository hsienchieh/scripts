sudo apt-get install -y git build-essential libsdl1.2-dev texinfo gawk chrpath diffstat

git clone https://github.com/openbmc/openbmc.git
cd openbmc
. openbmc-env
bitbake obmc-phosphor-image

