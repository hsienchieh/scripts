#!/bin/bash
lshw -c video
more /etc/issue.net
vendor=`lshw -c video | grep vendor`

if [[  "$vendor" == *"Intel Corporation" ]]; then
  echo "intel vga"
  wget http://registrationcenter.intel.com/irc_nas/4181/opencl_runtime_14.2_x64_4.5.0.8.tgz
fi
