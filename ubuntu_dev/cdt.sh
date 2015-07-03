#!/bin/bash
#
#
# add JAVA_HOME to .bashrc
#
#
# JAVA_HOME=/usr/lib/jvm/default-java
# export JAVA_HOME
#



sudo apt-get install maven openj7-jdk
mvn -version

git clone git://git.eclipse.org/gitroot/cdt/org.eclipse.cdt.git cdt

cd cdt

 
#
# write script check JAVA home and other.
#
#

JAVA_HOME=/usr/lib/jvm/default-java


mvn clean install

ls releng/org.eclipse.cdt.repo/target/repository/ 




