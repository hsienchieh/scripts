
sudo apt-get install git-core gitk git-gui subversion curl
git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git
export PATH=`pwd`/depot_tools:"$PATH"
umask 022


mkdir -p ${HOME}/chromiumos

cd ${HOME}/chromiumos
# Note: Add the "-g minilayout" option to do a minilayout checkout.
repo init -u https://chromium.googlesource.com/chromiumos/manifest.git --repo-url https://chromium.googlesource.com/external/repo.git -g minilayout
repo sync

cros_sdk


export BOARD=amd64-generic

