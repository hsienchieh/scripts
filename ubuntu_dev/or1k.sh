#!/bin/bash
if [ ! -d or1k ];then
  mkdir or1k_src
fi

cd or1k_src
svn co http://opencores.org/ocsvn/openrisc/openrisc/trunk
